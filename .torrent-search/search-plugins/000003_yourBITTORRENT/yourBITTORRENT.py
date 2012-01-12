#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, httplib2
from TorrentSearch import htmltools

class yourBITTORRENTTorrentPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,reflink,hashvalue,filelist,poster):
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,hashvalue=hashvalue)
      self.reflink=reflink
      self.filelist=filelist
      self.filelist_loaded=True
      self.poster=poster
      self.poster_loaded=True
   def _do_get_link(self):
      return self.reflink
      
class yourBITTORRENTTorrentPlugin(TorrentSearch.Plugin.Plugin):
   TITLE="yourBITTORRENT"
   def _parseDate(self,data):
      if data=="Yesterday":
         data=1
      else:
         try:
            i=data.index("d")
            data=eval(data[:i])
         except:
            data=0
      return datetime.date.today()-datetime.timedelta(data)
   def _run_search(self,pattern,page=1,href=None):
      if href==None:
         href="http://www.yourbittorrent.com/?q="+urllib.quote_plus(pattern)
      c=httplib2.Http()
      resp,content=c.request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         self.results_count = int(htmltools.find_elements(htmltools.find_elements(tree.getRootElement(), "div", style="float:right;margin-top:15px")[0], "b")[2].getContent().rstrip().lstrip())
      except:
         pass
      lines = []
      for i in htmltools.find_elements(tree.getRootElement(), "td", id="n"):
         lines.append(i.parent);
      for i in lines:
         try:
            links,date,size,seeders,leechers,health=htmltools.find_elements(i,"td")
            dlink,ulink=htmltools.find_elements(links,"a")
            filelist = TorrentSearch.Plugin.FileList()
            poster = None
            try:
               c=httplib2.Http()
               resp,content=c.request(urllib.basejoin(href,ulink.prop('href')))
               itemtree=libxml2.htmlParseDoc(content,"utf-8")
               table=htmltools.find_elements(htmltools.find_elements(itemtree.getRootElement(),"div",id="content")[0],"table")[0]
               line=htmltools.find_elements(table,"tr")[1]
               cell=htmltools.find_elements(line,"td")[3]
               hashvalue=cell.getContent()
               h3s = htmltools.find_elements(itemtree.getRootElement(), "h3")
               files_h3 = None
               for h3 in h3s:
                  if h3.getContent()=="Files":
                     files_h3 = h3
               if files_h3:
                  for file_line in htmltools.find_elements(files_h3.next, "tr")[1:]:
                     try:
                        filepix,filename,filesize = htmltools.find_elements(file_line,"td")
                        filename=filename.getContent()
                        filesize=filesize.getContent()
                        filelist.append(filename,filesize)
                     except:
                        pass
               h1s = htmltools.find_elements(itemtree.getRootElement(), "h1")
               cover_h1 = None
               for h1 in h1s:
                  if h1.getContent()=="Cover Art":
                     cover_h1 = h1
               if cover_h1:
                  try:
                     poster = htmltools.find_elements(cover_h1.parent, "img")[0].prop("src")
                  except:
                     pass
            except:
               hashvalue=None
            label=ulink.getContent()
            link=urllib.basejoin(href,dlink.prop('href'))
            size=size.getContent().upper()
            seeders=eval(seeders.getContent())
            leechers=eval(leechers.getContent())
            date=self._parseDate(date.getContent())
            self.add_result(yourBITTORRENTTorrentPluginResult(label,date,size,seeders,leechers,link,hashvalue,filelist,poster))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            try:
               pager=htmltools.find_elements(tree.getRootElement(),"div",**{"class":"pagnation_l"})[0]
            except:
               pager=None
            if pager:
               pages=htmltools.find_elements(pager,"a")
               i=0
               must_continue=False
               while i<len(pages) and not must_continue:
                  p=pages[i]
                  try:
                     pn=eval(pages[i].getContent())
                     if pn>page:
                        must_continue=True
                     else:
                        i+=1
                  except:
                     i+=1
               if must_continue:
                  url="http://www.yourbittorrent.com/?q=%s&page=%d"%(urllib.quote_plus(pattern),pn)
                  self._run_search(pattern,pn,url)
         except:
            pass
   

