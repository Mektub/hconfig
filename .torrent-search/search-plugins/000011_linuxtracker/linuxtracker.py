#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2
from TorrentSearch import htmltools

class linuxTRACKERPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_link,hashvalue):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,hashvalue=hashvalue)
   def _do_get_link(self):
      return self.torrent_link
      
class linuxTRACKERPlugin(TorrentSearch.Plugin.Plugin):
   def _run_search(self,pattern,href=None):
      if href==None:
         href="http://linuxtracker.org/index.php?page=torrents&search="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         pager=htmltools.find_elements(tree.getRootElement(),"form",name="change_page")[0]
         options=htmltools.find_elements(pager,"option")
         self.results_count=50*len(options)
      except:
         pager=None
         self.results_count=50
      restable=htmltools.find_elements(tree.getRootElement(),"table",**{'class':'lista'})[1]
      lines=htmltools.find_elements(restable,"tr")[1:]
      for i in lines:
         try:
            cat,link,torrent_link,date,seeders,leechers,a,b=htmltools.find_elements(i,"td")
            label=link.getContent()
            link=urllib.basejoin(href,htmltools.find_elements(link,"a")[0].prop('href'))
            torrent_link=urllib.basejoin(href,htmltools.find_elements(torrent_link,"a")[0].prop('href'))
            date=time.strptime(date.getContent(),"%d/%m/%Y")
            date=datetime.date(date.tm_year,date.tm_mon,date.tm_mday)
            seeders=eval(seeders.getContent())
            leechers=eval(leechers.getContent())
            resp,content=self.http_queue_request(link)
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            table=htmltools.find_elements(itemtree.getRootElement(),"table",**{'class':'coltable'})[0]
            size=None
            hashvalue=None
            for td in htmltools.find_elements(table,"td"):
               if td.getContent()=="Size" and size==None:
                  size=td.next.next.getContent()
               if td.getContent()=="Info Hash" and hashvalue==None:
                  hashvalue=td.next.next.getContent()
            self.add_result(linuxTRACKERPluginResult(label,date,size,seeders,leechers,torrent_link,hashvalue))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            if pager:
               spans=htmltools.find_elements(pager,"span")
               i=0
               while i<len(spans) and spans[i].prop('class')!='pagercurrent':
                  i+=1
               i+=1
               if i<len(spans):
                  link=htmltools.find_elements(spans[i],"a")[0]
                  link=urllib.basejoin(href,link.prop('href'))
                  self._run_search(pattern,link)
         except:
            pass
   

