#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2
from TorrentSearch import htmltools

class btjunkiePluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_link,magnet):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,magnet)
   def _do_get_link(self):
      return self.torrent_link
      
class btjunkiePlugin(TorrentSearch.Plugin.Plugin):
   def _run_search(self,pattern,href=None):
      if href==None:
         href="http://btjunkie.org/search?q="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         table=htmltools.find_elements(tree.getRootElement(),"table",**{"class":"tab_result"})[0]
         th=htmltools.find_elements(table,"th")[1]
         strong=htmltools.find_elements(th,"strong")[1]
         self.results_count=eval(strong.getContent().replace(",",""))
      except:
         pass
      restable=htmltools.find_elements(tree.getRootElement(),"table",**{'class':'tab_result'})[0].next
      lines=htmltools.find_elements(restable,"tr",1)[2:]
      for i in lines:
         try:
            links,cat,size,date,seeders,leechers,a=htmltools.find_elements(i,"th",1)
            size=size.getContent()
            j=0
            while size[j] in "0123456789":
               j+=1
            size=size[:j]+" "+size[j:]
            seeders=seeders.getContent()
            if seeders=="X":
               seeders=0
            else:
               seeders=eval(seeders)
            leechers=leechers.getContent()
            if leechers=="X":
               leechers=0
            else:
               leechers=eval(leechers)
            links=htmltools.find_elements(links,"a")
            torrent_link=urllib.basejoin(href,links[0].prop('href'))
            label=links[2].getContent()
            link=urllib.basejoin(href,links[2].prop('href'))
            resp,content=self.http_queue_request(link)
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            table=htmltools.find_elements(itemtree.getRootElement(),"table",cellpadding="2",cellspacing="0",width="100%",style="border: 1px solid #000000;")[0]
            tr=htmltools.find_elements(table,"tr",1)[3]
            table=htmltools.find_elements(tr,"table")[0]
            datecell=htmltools.find_elements(htmltools.find_elements(table,"tr")[2],"th")[3]
            date=datecell.getContent()
            j=date.index(" ")
            date=date[:j]
            date=time.strptime(date,"%Y/%m/%d")
            date=datetime.date(date.tm_year,date.tm_mon,date.tm_mday)
            magnet=htmltools.find_elements(itemtree.getRootElement(),"a",title="Magnet Link")[0].prop('href')
            self.add_result(btjunkiePluginResult(label,date,size,seeders,leechers,torrent_link,magnet))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            links=htmltools.find_elements(tree.getRootElement(),"a",**{'class':'WhtUnd'})
            next_link=None
            for i in links:
               if i.getContent()=="Next >>":
                  next_link=urllib.basejoin(href,i.prop('href'))
            if next_link:
               self._run_search(pattern,next_link)
         except:
            pass
   



