#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, httplib2, time
from TorrentSearch import htmltools

class NyaaTorrentsPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_url):
      self.torrent_url=torrent_url
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers)
   def _do_get_link(self):
      return self.torrent_url
      
class NyaaTorrentsPlugin(TorrentSearch.Plugin.Plugin):
   def _run_search(self,pattern,href=None):
      if href==None:
         href="http://www.nyaatorrents.org/?page=search&term="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         span=htmltools.find_elements(tree.getRootElement(),"span",**{'class':'notice'})[0]
         data=span.getContent()
         i=data.index(" ")
         self.results_count=eval(data[:i])
      except:
         pass
      restable=htmltools.find_elements(tree.getRootElement(),"table",**{'class':'tlist'})[0]
      lines=htmltools.find_elements(restable,"tr")[1:]
      for i in lines:
         try:
            cells=htmltools.find_elements(i,"td")
            name=cells[1]
            torrent_link=cells[2]
            size=cells[3]
            link=htmltools.find_elements(name,"a")[0]
            label=link.getContent().rstrip().lstrip()
            link=link.prop('href')
            torrent_link=htmltools.find_elements(torrent_link,"a")[0].prop('href')
            size=size.getContent().replace('i','')
            try:
               seeders=eval(cells[4].getContent())
            except:
               seeders=-1
            try:
               leechers=eval(cells[5].getContent())
            except:
               leechers=-1
            resp,content=self.http_queue_request(link)
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            tds=htmltools.find_elements(itemtree.getRootElement(),"td")
            date=""
            for j in tds:
               if j.getContent()=="Date:":
                  date=j.next.getContent()
            j=date.index(",")
            date=date[:j]
            month,day,year=date.split(" ")
            month=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].index(month)+1
            while day[0]=="0":
               day=day[1:]
            day=eval(day)
            year=eval(year)
            date=datetime.date(year,month,day)
            self.add_result(NyaaTorrentsPluginResult(label,date,size,seeders,leechers,torrent_link))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            pager=htmltools.find_elements(tree.getRootElement(),"table",**{'class':'tlistpages'})[0]
            links=htmltools.find_elements(pager,"a",**{'class':'page'})
            next_link=None
            for i in links:
               if i.getContent()==">":
                  next_link=i
                  break
            url=next_link.prop('href')
            self._run_search(pattern,url)
         except:
            pass
   


