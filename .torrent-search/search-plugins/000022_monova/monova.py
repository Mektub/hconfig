#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, libxml2, datetime, os, httplib2, urllib
from TorrentSearch import htmltools

class MonovaPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,torrent_link):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size)
   def _do_get_link(self):
      return self.torrent_link
      
class MonovaPlugin(TorrentSearch.Plugin.Plugin):
   def _formatSize(self, data):
      data=eval(data)
      units=['B','KB','MB','GB','TB']
      ui=0
      while data>=1024:
         ui+=1
         data/=1024.
      return "%.1f %s"%(data,units[ui])
   def _run_search(self,pattern):
      url="http://www.monova.org/rss.php?search="+urllib.quote(pattern)+"&order=added"
      resp,content=self.http_queue_request(url)
      tree=libxml2.parseDoc(content)
      results=htmltools.find_elements(tree.getRootElement(), "item")
      self.results_count=len(results)
      for i in results:
         title=htmltools.find_elements(i, "title")[0].getContent()
         date=htmltools.find_elements(i, "pubDate")[0].getContent()
         day,month,year=date.split(" ")[1:4]
         while day[0]=="0":
            day=day[1:]
         day=eval(day)
         year=eval(year)
         month=['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'].index(month)+1
         date=datetime.date(year,month,day)
         link=htmltools.find_elements(i,"enclosure")[0]
         size=self._formatSize(link.prop('length'))
         torrent_link=link.prop('url')
         self.add_result(MonovaPluginResult(title, date, size, torrent_link))
         if self.stop_search:
            return
   


