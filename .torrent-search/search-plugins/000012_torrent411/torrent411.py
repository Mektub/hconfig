#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2, _codecs
from TorrentSearch import htmltools

class Torrent411PluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_link,hashvalue):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,hashvalue=hashvalue)
   def _do_get_link(self):
      return self.torrent_link
      
class Torrent411Plugin(TorrentSearch.Plugin.Plugin):
   def _try_login(self):
      c=httplib2.Http()
      username,password=self.credentials
      username=username
      data=urllib.urlencode({'username':username,'password':password})
      headers={'Content-type':'application/x-www-form-urlencoded','User-Agent':'torrent-search'}
      resp,content=c.request("http://www.torrent411.com/account-login.php","POST",data,headers)
      if "set-cookie" in resp and not 'pass=null;' in resp['set-cookie']:
         return resp["set-cookie"]
      else:
         return None
   def _run_search(self,pattern,href=None):
      if href==None:
         href="http://www.torrent411.com/search/"+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(href)
      content=_codecs.utf_8_encode(_codecs.latin_1_decode(content)[0])[0]
      tree=libxml2.htmlParseDoc(content,"utf-8")
      pager=htmltools.find_elements(htmltools.find_elements(tree.getRootElement(),"table",**{'class':'NB-frame'})[1],"p")[0]
      try:
         b=htmltools.find_elements(pager,"b")[-1]
         data=b.getContent()
         i=len(data)-1
         while data[i] in "012346789":
            i-=1
         self.results_count=eval(data[i+1:])
      except:
         pass
      restable=htmltools.find_elements(pager.next.next,"table")[0]
      restable=htmltools.find_elements(restable,"table")[1]
      body=htmltools.find_elements(restable,"tbody")[0]
      lines=htmltools.find_elements(body,"tr",1)
      for i in lines:
         try:
            cat,link,a,date,b,c,d,e,f,g,h,i,size,j,seeders,leechers=htmltools.find_elements(i,"td")
            date=date.getContent().replace(chr(194)+chr(160)+"at"+chr(194)+chr(160)," ")
            date=time.strptime(date,"%Y-%m-%d %H:%M:%S")
            date=datetime.date(date.tm_year,date.tm_mon,date.tm_mday)
            size=size.getContent().replace(chr(194)+chr(160)," ")
            seeders=eval(seeders.getContent())
            leechers=eval(leechers.getContent())
            link=htmltools.find_elements(link,"a")[0]
            label=link.prop('title')
            link=urllib.basejoin("http://www.torrent411.com",link.prop('href'))
            resp,content=self.http_queue_request(link)
            content=_codecs.utf_8_encode(_codecs.latin_1_decode(content)[0])[0]
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            table=htmltools.find_elements(itemtree.getRootElement(),"table",**{'cellpadding':'3'})[1]
            desc,name,torrent,cat,siz,hashvalue=htmltools.find_elements(table,"tr")[:6]
            torrent=htmltools.find_elements(torrent,"a")[0].prop('href')
            hashvalue=htmltools.find_elements(hashvalue,"td")[1].getContent()
            self.add_result(Torrent411PluginResult(label,date,size,seeders,leechers,torrent,hashvalue))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            links=htmltools.find_elements(pager,"a")
            next_link=None
            for i in links:
               if i.getContent()=="Next"+chr(194)+chr(160)+">>":
                  next_link=i
            if next_link:
               link=urllib.basejoin("http://www.torrent411.com",next_link.prop('href'))
               self._run_search(pattern,link)
         except:
            pass
   


