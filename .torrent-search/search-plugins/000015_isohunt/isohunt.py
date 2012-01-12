#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, httplib2, time, httplib
from TorrentSearch import htmltools

class isoHuntPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_url,hashvalue):
      self.torrent_url=torrent_url
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,hashvalue=hashvalue)
   def _do_get_link(self):
      return self.torrent_url
      
class isoHuntPlugin(TorrentSearch.Plugin.Plugin):
   def _parseDate(self,data):
      year,month,day=data.split("-")
      while month[0]=="0":
         month=month[1:]
      while day[0]=="0":
         day=day[1:]
      return datetime.date(eval(year),eval(month),eval(day))
   def _run_search(self,pattern,href=None):
      if href==None:
         href="http://isohunt.com/torrents/?ihq="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      pager=htmltools.find_elements(tree.getRootElement(),"table",**{'class':'pager'})[0]
      try:
         b=htmltools.find_elements(pager,"b")[0]
         self.results_count=eval(b.getContent())
      except:
         pass
      restable=htmltools.find_elements(tree.getRootElement(),"table",id="serps")[0]
      lines=htmltools.find_elements(restable,"tr")[1:]
      for i in lines:
         try:
            category,age,links,size,seeders,leechers=htmltools.find_elements(i,"td")
            size=size.getContent()
            try:
               seeders=eval(seeders.getContent())
            except:
               seeders=0
            try:
               leechers=eval(leechers.getContent())
            except:
               leechers=0
            links=htmltools.find_elements(links,"a")
            link=links[1]
            br=htmltools.find_elements(link,"br")
            if br:
               label=""
               node=br[0].next
               while node:
                  label+=node.getContent()
                  node=node.next
            else:
               label=link.getContent()
            link=urllib.basejoin(href,link.prop('href'))
            if len(links)==3:
               link=link.replace('/download/','/torrent_details/')
            age=age.getContent()
            unit=age[-1]
            value=eval(age[:-1])
            if unit=="w":
               value*=7
            date=datetime.date.today()-datetime.timedelta(value)
            resp,content=self.http_queue_request(link)
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            torrent_link=None
            for i in htmltools.find_elements(itemtree.getRootElement(),"a"):
               if i.getContent()==" Download .torrent":
                  torrent_link=i
            torrent_link=urllib.basejoin(link,torrent_link.prop('href'))
            span=htmltools.find_elements(itemtree.getRootElement(),"span",id="SL_desc")[0]
            data=span.getContent()[11:]
            j=data.index(" ")
            hashvalue=data[:j]
            self.add_result(isoHuntPluginResult(label,date,size,seeders,leechers,torrent_link,hashvalue))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            link=htmltools.find_elements(pager,"a",title="Next page")
            if link:
               self._run_search(pattern,urllib.basejoin(href,link[0].prop('href')))
         except:
            pass
   

