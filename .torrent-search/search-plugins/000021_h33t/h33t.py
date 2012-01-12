#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class H33TPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, seeders, leechers, torrent_url, hashvalue, category):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers, hashvalue=hashvalue, category=category)
      self.torrent_url = torrent_url
      
   def _do_get_link(self):
      return self.torrent_url
      
class H33TPlugin(TorrentSearch.Plugin.Plugin):
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "http://www.h33t.com/torrents.php?search="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      try:
         pager = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "img", src="./style/dark/previous.png")[0].parent
         data = TorrentSearch.htmltools.find_elements(pager, "a")[-1].getContent()
         i = len(data)-1
         while data[i] in "0123456789":
            i-=1
         self.results_count = eval(data[i+1:])
      except:
         pager = None
      
      results_table = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table", **{'class':'lista', 'width':'100%', 'align':'center', 'border':'0'})[0]
      results = TorrentSearch.htmltools.find_elements(results_table, "tr")[1:]
      
      for result in results:
         try:
            self._parse_result(page_url, result)
         except:
            pass
         if self.stop_search:
            return
      
      next_page_img = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "img", alt="Next")
      if next_page_img:
         next_page_link = next_page_img[0].parent
         if next_page_link.name=="a":
            next_page_url = urllib.basejoin(page_url, next_page_link.prop('href').replace(' ','%20'))
            self._run_search(pattern, next_page_url)
      
   def _parseCat(self, cat_id):
      cats_map = {
      '5' : 'video/manga',
      '25' : 'video/manga',
      '14' : 'audio',
      '3' : 'software/game',
      '8' : 'software/linux',
      '9' : 'software/mac',
      '1' : 'video/movie',
      '27' : 'video/movie',
      '2' : 'audio/music',
      '17' : 'video/music',
      '28' : 'video/music',
      '19' : 'pictures',
      '30' : 'software/game/psp',
      '15' : 'video/tv',
      '26' : 'video/tv',
      '7' : 'software/windows'
      }
      
      if cat_id in cats_map:
         return cats_map[cat_id]
      else:
         return ""
            
   def _parse_result(self, page_url, result_line):
      category, details, download, date, size, uploader, seeders, leechers = TorrentSearch.htmltools.find_elements(result_line, "td")[:8]
      category = TorrentSearch.htmltools.find_elements(category, "a")[0].prop('href')
      i = category.index("?id=")
      category = self._parseCat(category[i+4:])
      details_link = TorrentSearch.htmltools.find_elements(details, "a")[0]
      title = details_link.getContent()
      details_link = urllib.basejoin(page_url, details_link.prop('href'))
      i = details_link.index("?id=")
      hashvalue = details_link[i+4:]
      i = hashvalue.index("&")
      hashvalue = hashvalue[:i]
      download_link = urllib.basejoin(page_url, TorrentSearch.htmltools.find_elements(download, "a")[0].prop('href'))
      date = time.strptime(date.getContent(), "%d/%m/%Y")
      date = datetime.date(date.tm_year, date.tm_mon, date.tm_mday)
      size = size.getContent()
      seeders = eval(seeders.getContent())
      leechers = eval(leechers.getContent())
      
      self.add_result(H33TPluginResult(title, date, size, seeders, leechers, download_link, hashvalue, category))





