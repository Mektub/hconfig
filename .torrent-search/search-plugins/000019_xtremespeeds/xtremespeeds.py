#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2, _codecs
from TorrentSearch import htmltools

class xtremespeedsPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_link):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers)
   def _do_get_link(self):
      return self.torrent_link
      
class xtremespeedsPlugin(TorrentSearch.Plugin.Plugin):
   def _try_login(self):
      c=httplib2.Http()
      resp,content=c.request("http://xtremespeeds.net/")
      init_cookie=self._app.parse_cookie(resp['set-cookie'])
      username,password=self.credentials
      data=urllib.urlencode({'username':username,'password':password})
      headers={'Content-type':'application/x-www-form-urlencoded','Cookie':resp['set-cookie'],"User-Agent":"Python-httplib2/$Rev$"}
      resp,content=c.request("http://xtremespeeds.net/takelogin.php","POST",data,headers)
      if resp.status==302 and 'set-cookie' in resp:
         return init_cookie+"; "+self._app.parse_cookie(resp['set-cookie'])+"; ts_username="+username
      else:
         return None
   def _run_search(self,pattern,href=None):
      http=httplib2.Http()
      if href==None:
         href="http://xtremespeeds.net/browse.php"
         headers={'Content-type':'application/x-www-form-urlencoded','Cookie':self.login_cookie,"User-Agent":"Python-httplib2/$Rev$"}
         data=urllib.urlencode({'do':'search','keywords':pattern,'search_type':'t_name','category':'0'})
         resp,content=http.request(href,'POST',data,headers)
      else:
         headers={'Cookie':self.login_cookie,"User-Agent":"Python-httplib2/$Rev$"}
         resp,content=http.request(href,'POST',headers=headers)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         a=htmltools.find_elements(tree.getRootElement(),"a",**{'class':'current'})[0]
         data=a.prop('title')
         i=len(data)-1
         while data[i] in "0123456789":
            i-=1
         self.results_count=eval(data[i+1:])
      except:
         pass
      restable=htmltools.find_elements(tree.getRootElement(),"table",id="sortabletable")[0]
      lines=htmltools.find_elements(restable,"tr")[1:]
      for i in lines:
         try:
            category,name,torrent_link,comments,size,snatched,seeders,leechers,uploader=htmltools.find_elements(i,"td")
            label=htmltools.find_elements(name,"a")[0].getContent()
            date=htmltools.find_elements(name,"div")[0].getContent().rstrip().lstrip().split(' ')[0]
            date=time.strptime(date,"%m-%d-%Y")
            date=datetime.date(date.tm_year,date.tm_mon,date.tm_mday)
            torrent_link=htmltools.find_elements(torrent_link,"a")[0].prop('href')
            size=size.getContent().rstrip().lstrip()
            seeders=eval(seeders.getContent().rstrip().lstrip())
            leechers=eval(leechers.getContent().rstrip().lstrip())
            self.add_result(xtremespeedsPluginResult(label,date,size,seeders,leechers,torrent_link))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            next_link=None
            pager=htmltools.find_elements(tree.getRootElement(),"div",id="navcontainer_f")[0]
            links=htmltools.find_elements(pager,"a")
            for i in links:
               if i.getContent()==">":
                  next_link=i
                  break
            if next_link:
               self._run_search(pattern, urllib.basejoin(href,next_link.prop('href')))
         except:
            pass
   
