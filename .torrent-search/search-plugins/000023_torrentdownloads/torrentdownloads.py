#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class TorrentDownloadsPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, seeders, leechers, torrent_url):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers)
      self.torrent_url = torrent_url
      
   def _do_get_link(self):
      return self.torrent_url
      
class TorrentDownloadsPlugin(TorrentSearch.Plugin.Plugin):
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "http://www.torrentdownloads.net/search/?search="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      try:
         title_bar = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", **{'class':'title_bar1'})[0]
         self.results_count = int(TorrentSearch.htmltools.find_elements(title_bar, "span", **{'class':'num'})[0].getContent().rstrip().lstrip())
      except:
         pass
      
      results_list = title_bar.parent
      results = TorrentSearch.htmltools.find_elements(results_list, "div", 1)
      i = 0
      while i<len(results):
         if results[i].prop("class").startswith("grey_bar3"):
            i+=1
         else:
            del results[i]
      results = results[1:]
      
      for result in results:
         try:
            self._parse_result(result)
         except:
            pass
         if self.stop_search:
            return
            
      pagination_box = TorrentSearch.htmltools.find_elements(results_list, "div", **{'class':'pagination_box'})[0]
      pager_links = TorrentSearch.htmltools.find_elements(pagination_box, "a")
      for i in pager_links:
         if i.getContent()==">>":
            self._run_search(pattern, i.prop('href'))
            return
            
   def _parse_result(self, result_line):
      link = TorrentSearch.htmltools.find_elements(result_line, "a")[0]
      label=link.getContent()
      link=link.prop('href')
      if not link.startswith("http://www.torrentdownloads.net"):
         return
      health, leechers, seeders, size = TorrentSearch.htmltools.find_elements(result_line, "span", 1)[:4]
      seeders=eval(seeders.getContent())
      leechers=eval(leechers.getContent())
      size=size.getContent().replace(chr(194)+chr(160)," ")
      
      resp,content=self.http_queue_request(link)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      for i in TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", **{'class':'grey_bar1'})+TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", **{'class':'grey_bar1 back_none'}):
         span = TorrentSearch.htmltools.find_elements(i, "span")
         if span:
            span = span[0]
            key = span.getContent()
            value = span.next.getContent().rstrip().lstrip()
            if key=="Torrent added:":
               date = value
      date=time.strptime(date, "%Y-%m-%d %H:%M:%S")
      date=datetime.date(date.tm_year, date.tm_mon, date.tm_mday)
      
      torrent_url = TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(tree.getRootElement(), "ul", **{'class':'download'})[0], "img", src="/templates/new//images/download_button1.jpg")[0].parent.prop("href")
      
      self.add_result(TorrentDownloadsPluginResult(label, date, size, seeders, leechers, torrent_url))




