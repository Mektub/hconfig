#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2
from TorrentSearch import htmltools

class EZTVPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,torrent_link,magnet):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,magnet_link=magnet,category="video/tv")
   def _do_get_link(self):
      return self.torrent_link
      
class EZTVPlugin(TorrentSearch.Plugin.Plugin):
   def _run_search(self,pattern):
      #TODO; Retrieve number of seeders and leechers when available
      href="http://eztv.it/search/"
      headers={'Content-type':'application/x-www-form-urlencoded'}
      data=urllib.urlencode({'SearchString1':pattern,'SearchString':'',"search":"Search"})
      resp,content=self.http_queue_request(href,"POST",data,headers)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      div=htmltools.find_elements(tree.getRootElement(),"div",id="tooltip")[0]
      restable=div.nextElementSibling()
      try:
         self.results_count=len(htmltools.find_elements(restable,"tr",1,**{'class':'forum_header_border'}))
      except:
         pass
      lines=htmltools.find_elements(restable,"tr",1,**{'class':'forum_header_border'})
      for i in lines:
         try:
            link=htmltools.find_elements(htmltools.find_elements(i,"td")[1],"a")[0]
            label=link.getContent()
            link=urllib.basejoin(href,link.prop('href'))
            resp,content=self.http_queue_request(link)
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            torrent_link=htmltools.find_elements(itemtree.getRootElement(),"a",**{'class':'download_1'})[0].prop('href')
            magnet_link=htmltools.find_elements(itemtree.getRootElement(),"a",**{'class':'magnet'})[0].prop('href')
            data=str(itemtree)
            j=data.index("Filesize:")
            data=data[j:]
            j=data.index(" ")+1
            data=data[j:]
            j=data.index("B")+1
            size=data[:j]
            data=str(itemtree)
            j=data.index("Released:")
            data=data[j:]
            j=data.index(" ")+1
            data=data[j:]
            j=data.index("<")
            date=data[:j]
            day,month,year=date.split(" ")
            day=eval(day[:-2])
            month=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].index(month)+1
            year=eval(year)
            date=datetime.date(year,month,day)
            self.add_result(EZTVPluginResult(label,date,size,torrent_link,magnet_link))
         except:
            pass
         if self.stop_search:
            return



