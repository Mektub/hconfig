#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, time, os, httplib2
from TorrentSearch import htmltools

class TorrentzapPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,reflink):
      self.reflink,magnet=self._parseLinks(reflink)
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,magnet)
   def _parseLinks(self,url):
      c=httplib2.Http()
      resp,content=c.request(url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      div=htmltools.find_elements(tree.getRootElement(),"div",id="buttons")[0]
      links=htmltools.find_elements(div,"a")
      reflink=urllib.basejoin(url,links[0].prop('href'))
      try:
         magnet=htmltools.find_elements(htmltools.find_elements(tree.getRootElement(),"span",id="magnet")[0], "a")[0].prop('href')
         if "&" in magnet:
            magnet=magnet[:magnet.index("&")]
      except:
         magnet=None
      return reflink,magnet
   def _do_get_link(self):
      return self.reflink
      
class TorrentzapPlugin(TorrentSearch.Plugin.Plugin):
   def _parseDate(self,data):
      day,month,year=data.split(" ")
      while day[0]=="0":
         day=day[1:]
      day=eval(day)
      month=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].index(month)+1
      year=eval(year)
      return datetime.date(year,month,day)
   def _run_search(self,pattern,page=1,href=None):
      if href==None:
         href="http://www.torrentzap.com/search.php?q="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         td=htmltools.find_elements(tree.getRootElement(),"td",id="content_cap_tab_cont")[0]
         data=td.getContent()
         i=data.index('(')
         data=data[i+1:]
         i=data.index(' ')
         self.results_count=max(eval(data[:i])-5, 0)
      except:
         pass
      restable = htmltools.find_elements(htmltools.find_elements(tree.getRootElement(), "div", **{'class':'listing'})[0], "table")[0]
      lines=htmltools.find_elements(restable,"tr")[1:]
      for i in lines:
         try:
            date,name,links,size,seeders,leechers,health=htmltools.find_elements(i,"td",1)
            date=self._parseDate(date.getContent())
            link=htmltools.find_elements(name,"a")[0]
            label=link.getContent()
            link=urllib.basejoin(href,link.prop('href'))
            size=size.getContent().upper()
            j=0
            while j<len(size) and size[j] in "0123456789.":
               j+=1
            if j<len(size):
               size=size[:j]+" "+size[j:]
            seeders=eval(seeders.getContent())
            leechers=eval(leechers.getContent())
            self.add_result(TorrentzapPluginResult(label,date,size,seeders,leechers,link))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            div=htmltools.find_elements(tree.getRootElement(),"div",**{'class':'search_stat'})[0]
            link=div.lastElementChild()
            if link.name=="a":
               url=urllib.basejoin(href,link.prop('href'))
               self._run_search(pattern,0,url)
         except:
            pass
   



