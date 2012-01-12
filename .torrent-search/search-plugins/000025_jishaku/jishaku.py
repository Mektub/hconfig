#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class JishakuPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, torrent_url, magnet_link):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, magnet_link=magnet_link)
      self.torrent_url = torrent_url
      
   def _do_get_link(self):
      return self.torrent_url
      
class JishakuPlugin(TorrentSearch.Plugin.Plugin):
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "http://www.jishaku.net/?q="+urllib.quote_plus(pattern)+"&limit=150"
      resp,content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      results_table = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table", id="main-index")[0]
      results = TorrentSearch.htmltools.find_elements(results_table, "tr")
      
      for result in results:
         try:
            self._parse_result(result)
         except:
            pass
         if self.stop_search:
            return
      
      pager=TorrentSearch.htmltools.find_elements(tree.getRootElement(), "ul", **{'class':'main-pagination'})[0]
      next_page_link=TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(pager,"li")[-2],"a")[0]
      if next_page_link.getContent()==">":
         url=urllib.basejoin(page_url, next_page_link.prop('href'))
         self._run_search(pattern, url)
            
   def _parse_result(self, result_line):
      category,infos,details = TorrentSearch.htmltools.find_elements(result_line, "td")
      name,other=TorrentSearch.htmltools.find_elements(infos, "div")
      magnet, torrent=TorrentSearch.htmltools.find_elements(name, "a")
      label=magnet.getContent()
      magnet_link=magnet.prop('href')
      torrent_link=torrent.prop('href')
      size,date=TorrentSearch.htmltools.find_elements(other,"abbr")
      size=size.getContent().replace('i','')
      date = time.strptime(date.prop('title').split(' ')[0], "%Y-%m-%d")
      date=datetime.date(date.tm_year,date.tm_mon,date.tm_mday)
      
      self.add_result(JishakuPluginResult(label, date, size, torrent_link, magnet_link))




