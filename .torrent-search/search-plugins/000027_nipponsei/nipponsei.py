#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class NipponseiPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, seeders, leechers, torrent_url):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers, category="audio/music")
      self.torrent_url = torrent_url
      
   def _do_get_link(self):
      return self.torrent_url
      
class NipponseiPlugin(TorrentSearch.Plugin.Plugin):
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "https://nipponsei.minglong.org/index.php?section=Tracker&search="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      results = TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(tree.getRootElement(), "td",id="main")[0], "a", **{'class':'download'})
      self.results_count=len(results)
      for i in range(len(results)):
         results[i]=results[i].parent.parent
      
      for result in results:
         try:
            self._parse_result(result)
         except:
            pass
         if self.stop_search:
            return
            
   def _parse_result(self, result_line):
      link,date,size,seeders,leechers,downloads,transferred=TorrentSearch.htmltools.find_elements(result_line,"td")
      link=TorrentSearch.htmltools.find_elements(link,"a")[0]
      label=link.getContent()
      torrent_url=link.prop('href')
      size=size.getContent()
      seeders=eval(seeders.getContent())
      leechers=eval(leechers.getContent())
      date=time.strptime(date.getContent().split(" ")[0],"%Y-%m-%d")
      date=datetime.date(date.tm_year,date.tm_mon,date.tm_mday)
      
      self.add_result(NipponseiPluginResult(label, date, size, seeders, leechers, torrent_url))





