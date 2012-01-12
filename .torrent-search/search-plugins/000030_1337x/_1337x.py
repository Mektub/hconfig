#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class _1337XPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, seeders, leechers, torrent_url, magnet_url, category, nb_comments, details_page_url, comments, poster, filelist):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers, magnet_url, category=category, nb_comments=nb_comments)
      self.torrent_url = torrent_url
      self.details_page_url = details_page_url
      self.comments = comments
      self.comments_loaded=True
      self.poster=poster
      self.poster_loaded=True
      self.filelist = filelist
      self.filelist_loaded = True
      
   def _do_get_link(self):
      return self.torrent_url
      
class _1337XPlugin(TorrentSearch.Plugin.Plugin):
   
   def _parseCommentsDiv(self, div):
      res = []
      for comment in TorrentSearch.htmltools.find_elements(div, "div", **{'class':'comment'}):
         date = TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(comment, "h5")[0], "span")[0].next.getContent().rstrip().lstrip()
         username = TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(comment, "dt", **{'class':'author'})[0], "a")[0].getContent()
         content = TorrentSearch.htmltools.find_elements(comment, "div", **{'class':'postright round'})[0].getContent()
         res.insert(0,TorrentSearch.Plugin.TorrentResultComment(content,date,username))
      return res
   
   def _parseFileList(self, ul, path=""):
      res = []
      for li in TorrentSearch.htmltools.find_elements(ul, "li", 1):
         if li.prop("class")=="pft-directory":
            pathname = li.getContent().rstrip().lstrip()
            res+=self._parseFileList(li.next, path+pathname+"/")
         else:
            data = li.getContent().rstrip().lstrip()
            i = len(data)-1
            while data[i]!="(":
               i-=1
            filename = data[:i].rstrip().lstrip()
            size = data[i+1:-1].rstrip().lstrip().upper()
            res.append((path+filename,size))
      return res
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "http://1337x.org/search/%s/0/"%urllib.quote_plus(pattern)
      resp,content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      pager = None
      try:
         pager = TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(tree.getRootElement(), "div", **{'class':'pager'})[0], "ul")[0]
         data = TorrentSearch.htmltools.find_elements(pager, "li")[-1].getContent()
         i=len(data)-1
         while data[i] in "0123456789":
            i-=1
         self.results_count = int(data[i+1:])
      except:
         pass
      
      results_table = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table", **{'class':'torrents'})
      if len(results_table)>1:
         results_table = results_table[1]
      else:
         results_table = results_table[0]
      
      for result in TorrentSearch.htmltools.find_elements(results_table, "tr")[1:]:
         try:
            category,name,seeders,leechers,completed,size,health,author=TorrentSearch.htmltools.find_elements(result,"td")
            label = name.getContent()
            details_link = urllib.basejoin(page_url, TorrentSearch.htmltools.find_elements(name, "a")[0].prop("href"))
            seeders = int(seeders.getContent())
            leechers = int(leechers.getContent())
            size = size.getContent()
            i=0
            while size[i] in "0123456789.":
               i+=1
            size = size[:i]+" "+size[i:].upper()
            resp,content = self.http_queue_request(details_link)
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            itemdata = {}
            for dt in TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "dl", **{'class':'col_b'})[0], "dt"):
               try:
                  itemdata[dt.getContent()] = dt.next.next.getContent()
               except:
                  pass
            date = time.strptime(itemdata['Date uploaded:'], "%Y-%m-%d %H:%M:%S")
            date = datetime.date(date.tm_year, date.tm_mon,date.tm_mday)
            torrent_link = urllib.basejoin(details_link, TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "a", title="Download torrent")[0].prop("href"))
            magnet_link = TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "a", title="Magnet Link")[0].prop("href")
            nb_comments = 0
            try:
               data = TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "a", href="#comments")[0].getContent()
               i=data.index("(")+1
               data=data[i:]
               i=data.index(")")
               nb_comments=int(data[:i])
            except:
               pass
            comments = []
            try:
               comments_div = TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "div", id="commentsloads")[0]
               comments = self._parseCommentsDiv(comments_div)
               torrent_id = details_link.split("/")[-3]
               try:
                  for li in TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "div", id="comments")[0], "div", **{'class':'pager'})[0], "li")[1:]:
                     comments_page_id = li.prop("id")
                     comments_page_url = "http://1337x.org/jaxcom.php?torid=%s&page=%s"%(torrent_id,comments_page_id)
                     resp,content=self.http_queue_request(comments_page_url)
                     comments_tree = libxml2.htmlParseDoc(content,"utf-8")
                     comments_div = TorrentSearch.htmltools.find_elements(comments_tree.getRootElement(), "div", id="commentsloads")[0]
                     comments = self._parseCommentsDiv(comments_div)+comments
               except:
                  pass
            except:
               pass
            res_comments = TorrentSearch.Plugin.CommentsList()
            for i in comments:
               res_comments.append(i)
            poster = None
            try:
               poster = TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "img", **{'class':'descrimg'})[0].prop("src")
            except:
               pass
            res_filelist = TorrentSearch.Plugin.FileList()
            try:
               filelist = self._parseFileList(TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(itemtree.getRootElement(), "div", id="files")[0], "ul", **{'class':'files'})[2])
               for filename,filesize in filelist:
                  res_filelist.append(filename,filesize)
            except:
               pass
            self.add_result(_1337XPluginResult(label, date, size, seeders, leechers, torrent_link, magnet_link, "", nb_comments, details_link, res_comments, poster, res_filelist))
         except:
            pass
         if self.stop_search:
            return
      
      if pager and not self.stop_search:
         current_li = None
         for li in TorrentSearch.htmltools.find_elements(pager, "li")[2:]:
            if li.prop("class")!="spacer" and len(TorrentSearch.htmltools.find_elements(li, "a"))==0:
               current_li = li
               break
         link = TorrentSearch.htmltools.find_elements(current_li.next.next, "a")[0]
         url = urllib.basejoin(page_url, link.prop("href"))
         self._run_search(pattern, url)
      




