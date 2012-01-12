#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class ThePirateBayTorrentPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, seeders, leechers, torrent_url, magnet_url, category, nb_comments, details_page_url):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers, magnet_url, category=category, nb_comments=nb_comments)
      self.torrent_url = torrent_url
      self.details_page_url = details_page_url
      
   def _do_get_link(self):
      return self.torrent_url
   
   def _do_load_filelist(self):
      res = TorrentSearch.Plugin.FileList()
      tid = self.details_page_url.split('/')[-2]
      filelist_url = "http://thepiratebay.org/ajax_details_filelist.php?id="+tid
      filename, msg = urllib.urlretrieve(filelist_url)
      tree = libxml2.htmlParseFile(filename, "utf-8")
      os.unlink(filename)
      files = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table")[0]
      for i in TorrentSearch.htmltools.find_elements(files, "tr"):
         filename, size = TorrentSearch.htmltools.find_elements(i, "td")
         filename = filename.getContent()
         size = size.getContent().replace('i', '')
         res.append(filename, size)
      return res
      
   def _parseComment(self, comment):
      user_info = TorrentSearch.htmltools.find_elements(comment, "a")[0]
      user_url = "http://thepiratebay.org"+user_info.prop("href")
      user_name = user_info.getContent()
      date_data = user_info.next.getContent().lstrip().rstrip()[3:-5]
      date_data,time_data=date_data.split(" ")
      year,month,day=date_data.split("-")
      year=int(year)
      month=int(month)
      day=int(day)
      hour,minute=time_data.split(":")
      hour=int(hour)
      minute=int(minute)
      comment_date=datetime.datetime(year,month,day,hour,minute)
      content = TorrentSearch.htmltools.find_elements(comment, "div", **{'class':'comment'})[0].getContent()
      return TorrentSearch.Plugin.TorrentResultComment(content, comment_date, user_name, user_url)
      
   def _do_load_comments(self):
      res = TorrentSearch.Plugin.CommentsList()
      filename, msg = urllib.urlretrieve(self.details_page_url)
      tree = libxml2.htmlParseFile(filename, "utf-8")
      os.unlink(filename)
      div = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", **{'class':'torpicture'})
      if len(div)==1:
         img = TorrentSearch.htmltools.find_elements(div[0], "img")
         if len(img)==1:
            self.poster = img[0].prop('src')
      self.poster_loaded = True
      comments_zone = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", id="comments")
      if comments_zone:
         comments_zone = comments_zone[0]
         comments_browser = TorrentSearch.htmltools.find_elements(comments_zone, "div", **{'class': 'browse-coms noborder'})
         pages = []
         if comments_browser:
            comments_browser = comments_browser[0]
            links = TorrentSearch.htmltools.find_elements(comments_browser, "a", href="#")
            links_parsed = 1
            if links:
               try:
                  self.comments_loading_progress = 1.*links_parsed/len(links)
               except:
                  pass
               for i in links:
                  if not TorrentSearch.htmltools.find_elements(i, "img"):
                     page_index, total_pages, crc, tid = i.prop('onclick')[8:-16].split(',')
                     page_index = int(page_index)
                     total_pages = int(total_pages)
                     crc = crc.rstrip().lstrip()[1:-1]
                     tid = tid.rstrip().lstrip()[1:-1]
                     url = "http://thepiratebay.org/ajax_details_comments.php?id=%s&page=%d&pages=%d&crc=%s"%(tid, page_index, total_pages, crc)
                     filename, msg = urllib.urlretrieve(url)
                     tree = libxml2.htmlParseFile(filename, "utf-8")
                     os.unlink(filename)
                     pages.append(TorrentSearch.htmltools.find_elements(tree.getRootElement(), "body")[0])
                     links_parsed += 1
                     try:
                        self.comments_loading_progress = 1.*links_parsed/len(links)
                     except:
                        pass
         pages.append(comments_zone)
         while pages:
            page = pages[-1]
            del pages[-1]
            page_comments = TorrentSearch.htmltools.find_elements(page, "div", **{'class':'comment'})
            for i in range(len(page_comments)):
               page_comments[i] = page_comments[i].parent
            while page_comments:
               try:
                  res.append(self._parseComment(page_comments[-1]))
               finally:
                  del page_comments[-1]
      return res
      
class ThePirateBayTorrentPlugin(TorrentSearch.Plugin.Plugin):
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "http://thepiratebay.org/search/"+urllib.quote_plus(pattern)
      resp, content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      try:
         results_count_element = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "h2")[0]
         data = results_count_element.getContent()
         i = data.index("(approx ")+8
         data = data[i:]
         i = data.index(" ")
         data = data[:i]
         self.results_count = eval(data)
      except:
         pass
      
      results_table = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table", id="searchResult")[0]
      results = TorrentSearch.htmltools.find_elements(results_table, "tr")
      
      for result in results:
         try:
            self._parse_result(page_url, result)
         except:
            pass
         if self.stop_search:
            return
      
      maindiv = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", id="main-content")[0]
      pager = maindiv.nextElementSibling()
      
      next_page_img = TorrentSearch.htmltools.find_elements(pager, "img", alt="Next")
      if next_page_img:
         next_page_link = next_page_img[0].parent
         next_page_url = urllib.basejoin(page_url, next_page_link.prop('href'))
         self._run_search(pattern, next_page_url)
            
   def _parse_date(self, data):
      try: # Date this year ?
         res=time.strptime(data,"%m-%d %H:%M")
         res=datetime.date(datetime.date.today().year,res.tm_mon,res.tm_mday)
      except:
         try: # Date before this year ?
            res=time.strptime(data,"%m-%d %Y")
            res=datetime.date(res.tm_year,res.tm_mon,res.tm_mday)
         except:
            if data.split(" ")[0]=="Y-day": # Yesterday ?
               res=datetime.date.today()-datetime.timedelta(1)
            else: # Today
               res=datetime.date.today()
      return res
      
   def _parseCat(self, main_cat, sub_cat):
      if main_cat=="Audio":
         if sub_cat=="Music":
            return "audio/music"
         else:
            return "audio"
      if main_cat=="Video":
         if sub_cat  in ["Movies","Movies DVDR","Highres - Movies"]:
            return "video/movie"
         elif sub_cat in ["TV shows","Highres - TV shows"]:
            return "video/tv"
         elif sub_cat=="Music videos":
            return "video/music"
         return "video"
      if main_cat=="Applications":
         return "software"
      if main_cat=="Games":
         if sub_cat=="PC":
            return "software/game/pc"
         elif sub_cat=="PS2":
            return "software/game/ps2"
         elif sub_cat=="XBOX360":
            return "software/game/xbox360"
         elif sub_cat=="Mac":
            return "software/game/mac"
         elif sub_cat=="Wii":
            return "software/game/wii"
      if main_cat=="Porn":
         if sub_cat  in ["Movies","Movies DVDR","Highres - Movies"]:
            return "video/xxx"
         return ""
      return ""
            
   def _parse_result(self, base_url, result_line):
      cat_cell, main_cell, seeders_cell, leechers_cell = TorrentSearch.htmltools.find_elements(result_line, "td")
      
      main_cat, sub_cat = TorrentSearch.htmltools.find_elements(cat_cell, "a")
      main_cat = main_cat.getContent()
      sub_cat = sub_cat.getContent()
      cat=self._parseCat(main_cat, sub_cat)
      
      seeders = int(seeders_cell.getContent())
      leechers = int(leechers_cell.getContent())
      
      title_link = TorrentSearch.htmltools.find_elements(main_cell, "a", **{"class": "detLink"})[0]
      title = title_link.getContent()
      details_page_url = urllib.basejoin(base_url, title_link.prop('href'))
      
      torrent_link, magnet_link = TorrentSearch.htmltools.find_elements(main_cell, "a", 1)[:2]
      torrent_url = torrent_link.prop('href')
      magnet_url = magnet_link.prop('href')
      
      nb_comments = 0
      comments_img = TorrentSearch.htmltools.find_elements(main_cell, "img", src="http://static.thepiratebay.org/img/icon_comment.gif")
      if comments_img:
         try:
            data = comments_img[0].prop("title")
            nb_comments = int(data[17:-10])
         except:
            pass
      
      date_size_data = TorrentSearch.htmltools.find_elements(main_cell, "font")[0].getContent()
      date_size_data = date_size_data.replace(chr(194)+chr(160),' ')
      
      date_data, size_data = date_size_data.split(',')[:2]
      
      date_data = date_data[9:]
      date = self._parse_date(date_data)
      
      size_data = size_data[6:]
      size = size_data.replace("i","")
      
      self.add_result(ThePirateBayTorrentPluginResult(title, date, size, seeders, leechers, torrent_url, magnet_url, cat, nb_comments, details_page_url))
      



