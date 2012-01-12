#! /usr/bin/python

# -*- coding=utf-8 -*-



import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2

import TorrentSearch.htmltools



class AhaSharePluginResult(TorrentSearch.Plugin.PluginResult):

   

   def __init__(self, label, date, size, seeders, leechers, torrent_url, details_page_url):

      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers)

      self.torrent_url = torrent_url

      self.details_page_url = details_page_url

   

   def _do_get_link(self):

      return self.torrent_url

      

class AhaSharePlugin(TorrentSearch.Plugin.Plugin):

   

   def _run_search(self, pattern, page_url=""):

      if page_url == "":

         page_url = "http://www.ahashare.com/torrents-search.php?search="+urllib.quote_plus(pattern)

      resp, content=self.http_queue_request(page_url)

      tree=libxml2.htmlParseDoc(content,"utf-8")

      

      results_table = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table", **{'class': 'ttable_headinner'})[0]

      

      next_page_link = None

      

      try:

         elem = results_table.next

         while elem.name!="center":

            elem = elem.next

         count_elem = None

         for i in TorrentSearch.htmltools.find_elements(elem, "b"):

            if "-" in i.getContent():

               count_elem = i

            elif i.getContent().startswith("Next"):

               next_page_link = urllib.basejoin(page_url, i.parent.parent.prop("href"))

         data = count_elem.getContent()

         i = len(data)-1

         while data[i] in "0123456789":

            i -= 1

         self.results_count = int(data[i+1:])

      except:

         pass

      

      for result in TorrentSearch.htmltools.find_elements(results_table, "tr")[1:]:

         try:

            category, name, dl_link, uploader, size, seeders, leechers, health = TorrentSearch.htmltools.find_elements(result, "td")

            title = name.getContent().rstrip().lstrip()[2:].replace(chr(226)+chr(150)+chr(136), "")

            details_link = urllib.basejoin(page_url, TorrentSearch.htmltools.find_elements(name, "a")[0].prop('href'))

            dl_link = urllib.basejoin(page_url, TorrentSearch.htmltools.find_elements(dl_link, "a")[0].prop('href'))

            size = size.getContent().rstrip().lstrip()

            seeders = int(seeders.getContent().rstrip().lstrip())

            leechers = int(leechers.getContent().rstrip().lstrip())

            

            resp, content = self.http_queue_request(details_link)

            itemtree = libxml2.htmlParseDoc(content,"utf-8")

            details_table = TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "table", width="95%", cellpadding="3", border="0")[1]

            details = {}

            for i in TorrentSearch.htmltools.find_elements(details_table, "tr"):

               try:

                  key, value = TorrentSearch.htmltools.find_elements(i, "td")

                  details[key.getContent()] = value.getContent()

               except:

                  pass

            try:

               date = time.strptime(details['Date Added:'], "%d-%m-%Y %H:%M:%S")

               date = datetime.date(date.tm_year,date.tm_mon,date.tm_mday)

            except:

               date = None

            self.add_result(AhaSharePluginResult(title, date, size, seeders, leechers, dl_link, details_link))

         except:

            pass

      

      if next_page_link and next_page_link!=page_url and not self.stop_search:

         self._run_search(pattern, next_page_link)


