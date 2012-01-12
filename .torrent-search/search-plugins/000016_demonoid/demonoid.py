#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2, _codecs
from TorrentSearch import htmltools

class DemonoidPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_link):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers)
   def _do_get_link(self):
      return self.torrent_link
      
class DemonoidPlugin(TorrentSearch.Plugin.Plugin):
   def _run_search(self,pattern,href=None):
      if href==None:
         href="http://www.demonoid.me/files/?query="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         data=htmltools.find_elements(htmltools.find_elements(tree.getRootElement(),"td",**{'class':'tone_2_bl'})[0],"strong")[0].getContent()
         i=data.index(" ")
         self.results_count=eval(data[:i])
      except:
         pass
      restable=htmltools.find_elements(tree.getRootElement(),"td",**{'class':'torrent_header_1'})[0].parent.parent
      lines=htmltools.find_elements(restable,"tr",1)[4:]
      for i in lines:
         try:
            cells=htmltools.find_elements(i,"td")
            if len(cells)==1:
               date=cells[0].getContent()
               j=date.index(",")
               date=date[j+2:].replace(",","")
               month,day,year=date.split(" ")
               while day[0]=="0":
                  day=day[1:]
               day=eval(day)
               month=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].index(month)+1
               year=eval(year)
               date=datetime.date(year,month,day)
            elif len(cells)==2:
               link=htmltools.find_elements(cells[1],"a")[0]
               label=link.getContent()
            else:
               cats,user,link,size,comments,complete,seeders,leechers,health=cells
               size=size.getContent()
               link=urllib.basejoin(href,htmltools.find_elements(link,"a")[0].prop('href'))
               seeders=eval(seeders.getContent())
               leechers=eval(leechers.getContent())
               self.add_result(DemonoidPluginResult(label,date,size,seeders,leechers,link))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            next_link=None
            pager=htmltools.find_elements(tree.getRootElement(),"td",**{'class':'tone_3_bl'})[1]
            for i in htmltools.find_elements(pager,"a"):
               if i.getContent()=="Next >>":
                  next_link=i
                  break
            if next_link:
               url=urllib.basejoin(href,next_link.prop('href'))
               self._run_search(pattern,url)
         except:
            pass
   



