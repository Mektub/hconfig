#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, httplib2, time
from TorrentSearch import htmltools

class BiteNovaPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_url,hashvalue):
      self.torrent_url=torrent_url
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,hashvalue=hashvalue)
   def _do_get_link(self):
      return self.torrent_url
      
class BiteNovaPlugin(TorrentSearch.Plugin.Plugin):
   def _parseDate(self,data):
      year,month,day=data.split("-")
      while month[0]=="0":
         month=month[1:]
      while day[0]=="0":
         day=day[1:]
      return datetime.date(eval(year),eval(month),eval(day))
   def _run_search(self,pattern,href=None):
      if href==None:
         href="http://www.bitenova.org/search.php"
         headers={'Content-type':'application/x-www-form-urlencoded'}
         data={'search':pattern}
         c=httplib2.Http()
         resp,content=c.request(href,"POST",urllib.urlencode(data),headers)
         if not "location" in resp:
            resp,content=c.request(href,"POST",urllib.urlencode(data),headers)
         href=urllib.basejoin(href,resp['location'])
      c=httplib2.Http()
      resp,content=c.request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         count_div=htmltools.find_elements(tree.getRootElement(),"div",id="pag")[0]
         li=htmltools.find_elements(count_div,"li")[1]
         data=li.getContent()[2:]
         i=data.index(" ")
         self.results_count=eval(data[:i])
      except:
         pass
      restable=htmltools.find_elements(tree.getRootElement(),"table",id="main_tt")[0]
      lines=htmltools.find_elements(restable,"tr")[1:]
      if len(lines)==0:
         return
      for i in lines:
         try:
            date,category,links,size,seeders,leechers=htmltools.find_elements(i,"td")
            date=date.getContent()
            date=date.replace(chr(194)+chr(160)," ")
            day,month,year=date.split(" ")
            while day[0] in "0 ":
               day=day[1:]
            day=eval(day)
            month=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].index(month)+1
            year=time.strptime(year,"%y").tm_year
            date=datetime.date(year,month,day)
            size=size.getContent().replace(chr(194)+chr(160)," ")
            seeders=eval(seeders.getContent())
            leechers=eval(leechers.getContent())
            label=htmltools.find_elements(links,"a",**{'class':None})[0].getContent()
            link=htmltools.find_elements(links,"a")[0].prop('href')
            hashvalue=None
            try:
               url,query=urllib.splitquery(link)
               queries=query.split('&')
               for q in queries:
                  key,value=q.split('=')
                  if key=="id":
                     hashvalue=value
            except:
               pass
            link=urllib.basejoin(href,link)
            self.add_result(BiteNovaPluginResult(label,date,size,seeders,leechers,link,hashvalue))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            try:
               pager=htmltools.find_elements(tree.getRootElement(),"div",id="pag")[0]
            except:
               pager=None
            if pager:
               link=htmltools.find_elements(pager,"a",title="Next page")[0]
               link=urllib.basejoin(href,link.prop('href'))
               self._run_search(pattern,link)
         except:
            pass
   

