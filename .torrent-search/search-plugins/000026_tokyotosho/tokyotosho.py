#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class TokyoToshokanPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, seeders, leechers, torrent_url):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers)
      self.torrent_url = torrent_url
      
   def _do_get_link(self):
      return self.torrent_url
      
class TokyoToshokanPlugin(TorrentSearch.Plugin.Plugin):
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "http://tokyotosho.info/search.php?terms="+urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      results_table = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table", **{'class':'listing'})[0]
      results = TorrentSearch.htmltools.find_elements(results_table, "a", **{'type':"application/x-bittorrent"})
      results = TorrentSearch.htmltools.find_elements(results_table, "tr", 1)
      self.results_count=len(results)/2
      
      for i in range(len(results)/2):
         try:
            self._parse_result(page_url, results[2*i+(len(results)%2)])
         except:
            pass
         if self.stop_search:
            return
      
      pager=TorrentSearch.htmltools.find_elements(tree.getRootElement(), "ul", **{'class':'main-pagination'})[0]
      next_page_link=TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(pager,"li")[-2],"a")[0]
      if next_page_link.getContent()==">":
         url=urllib.basejoin(page_url, next_page_link.prop('href'))
         self._run_search(pattern, url)
            
   def _parse_result(self, url, result):
      links = TorrentSearch.htmltools.find_elements(result, "a")
      if len(links)==3:
         category, result_link, details_link = links
      else:
         category, result_link, website, details_link = links
      label=result_link.getContent()
      details_link=urllib.basejoin(url, details_link.prop('href'))
      resp,content=self.http_queue_request(details_link)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      infotable=TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", **{'class':'details'})[0]
      infolines=TorrentSearch.htmltools.find_elements(infotable,"li")
      infodic={}
      for i in range(len(infolines)/2):
         try:
            lab = infolines[2*i].getContent().rstrip().lstrip()
            val = infolines[2*i+1].getContent()
            infodic[lab]=val
         except:
            pass
      try:
         seeders=eval(infodic['Seeders:'])
      except:
         seeders=1
      try:
         leechers=eval(infodic['Leechers:'])
      except:
         leechers=-1
      date=infodic['Date Submitted:']
      date=date.split(' ')[0]
      year,month,day=date.split('-')
      if day.startswith('0'):
         day = day[1:]
      if month.startswith('0'):
         month = month[1:]
      day=eval(day)
      month=eval(month)
      year=eval(year)
      date=datetime.date(year,month,day)
      size=infodic['Filesize:']
      i=0
      while size[i] in "0123456789.":
         i+=1
      size=size[:i]+' '+size[i:]
      torrent_link=urllib.basejoin(url, result_link.prop('href'))
      
      self.add_result(TokyoToshokanPluginResult(label, date, size, seeders, leechers, torrent_link))



