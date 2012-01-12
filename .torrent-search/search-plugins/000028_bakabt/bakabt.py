#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2, _codecs
from TorrentSearch import htmltools

class BakaBTPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,reflink):
      self.reflink=reflink
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers)
   def _do_get_link(self):
      c=httplib2.Http()
      headers={'Cookie':self.plugin.login_cookie}
      resp,content=c.request(self.reflink,headers=headers)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      return urllib.basejoin(self.reflink,htmltools.find_elements(tree.getRootElement(),"a",**{'class':'download_link'})[0].prop('href'))
      
class BakaBTPlugin(TorrentSearch.Plugin.Plugin):
   def _try_login(self):
      c=httplib2.Http()
      username,password=self.credentials
      resp,content=c.request('http://www.bakabt.com/login.php')
      data=urllib.urlencode({'username':username,'password':password,'returnto':'/index.php'})
      headers={'Content-type':'application/x-www-form-urlencoded', 'Cookie':resp['set-cookie']}
      resp,content=c.request("http://www.bakabt.com/login.php","POST",data,headers)
      if 'set-cookie' in resp and 'uid=' in resp['set-cookie']:
         return self._app.parse_cookie(resp['set-cookie'])
      else:
         return None
   def _run_search(self,pattern, page_url=''):
      http=httplib2.Http()
      headers={'Cookie':self.login_cookie}
      if page_url=="":
         page_url="http://www.bakabt.com/browse.php?q="+urllib.quote(pattern)
      resp,content=http.request(page_url,headers=headers)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         data=htmltools.find_elements(htmltools.find_elements(tree.getRootElement(), "div", **{'class':'pager'})[0], "a")[-2].getContent()
         i=len(data)-1
         while i>=0 and data[i] in "0123456789":
            i-=1
         self.results_count=eval(data[i+1:])
      except:
         pass
      results_table=htmltools.find_elements(tree.getRootElement(),"table",**{'class':'torrents'})[0]
      lines=htmltools.find_elements(results_table,"tr")[1:]
      is_alt=False
      for i in range(len(lines)):
         try:
            line=lines[i]
            if "torrent_alt" in line.prop('class') and not is_alt:
               is_alt=True
               continue
            if not "torrent_alt" in line.prop('class'):
               is_alt=False
            
            cells=htmltools.find_elements(line,"td")
            if len(cells)==6:
               category, details, comments, date, size, transfers = cells
            else:
               details, comments, date, size, transfers = cells
            day,month,year=date.getContent().replace("'","").split(" ")
            day=eval(day)
            year=eval("20"+year)
            month=['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'].index(month)+1
            date=datetime.date(year,month,day)
            seeders,leechers=htmltools.find_elements(transfers,"a")
            seeders=eval(seeders.getContent())
            leechers=eval(leechers.getContent())
            size=size.getContent()
            link=htmltools.find_elements(details,"a")[0]
            label=link.getContent()
            link=urllib.basejoin(page_url,link.prop('href'))
            self.add_result(BakaBTPluginResult(label,date,size,seeders,leechers,link))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         link=htmltools.find_elements(htmltools.find_elements(tree.getRootElement(), "div", **{'class':'pager'})[0], "a")[-1]
         if link.prop('class')!='selected':
            self._run_search(pattern, urllib.basejoin(page_url, link.prop('href')))
   



