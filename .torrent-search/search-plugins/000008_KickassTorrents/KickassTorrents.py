#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, httplib2
from TorrentSearch import htmltools

class KickassTorrentsPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent,magnet):
      self.torrent=torrent
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,magnet)
   def _do_get_link(self):
      return self.torrent
      
class KickassTorrentsPlugin(TorrentSearch.Plugin.Plugin):
   def _run_search(self,pattern,page=1,href=None):
      if href==None:
         href="http://en.kickasstorrents.com/search/%s/"%urllib.quote(pattern)
      resp,content=self.http_queue_request(href)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      div=htmltools.find_elements(tree.getRootElement(),"div",**{'class':'mainpart'})[0]
      try:
         span = htmltools.find_elements(htmltools.find_elements(tree.getRootElement(), "div", **{'class':'tabs'})[1].next.next, "h2")[0]
         restable = span.next
         data=span.getContent().rstrip()
         i=len(data)-1
         while data[i] in "0123456789":
            i-=1
         self.results_count=eval(data[i+1:])
      except:
         pass
      lines=htmltools.find_elements(restable,"tr")[1:]
      for i in lines:
         try:
            links,size,nbfiles,date,seeders,leechers=htmltools.find_elements(i,"td")
            size=size.getContent()
            seeders=eval(seeders.getContent())
            leechers=eval(leechers.getContent())
            div=htmltools.find_elements(links,"div",**{'class':'torrentname'})[0]
            link=htmltools.find_elements(div,"a")[1]
            label=""
            for j in link.getContent().splitlines():
               label+=j
            link=urllib.basejoin(href,link.prop('href'))
            resp,content=self.http_queue_request(link, headers={'Cookie': 'country_code=en'})
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            try:
               div=htmltools.find_elements(itemtree.getRootElement(),"div",id="threeButs")[0]
            except:
               div=htmltools.find_elements(itemtree.getRootElement(),"div",**{"class":"buttonsline downloadButtonGroup"})[0]
            torrent,magnet=htmltools.find_elements(div,"a")[:2]
            torrent=urllib.basejoin(link,torrent.prop('href'))
            magnet=magnet.prop('href')
            if "&" in magnet:
               i=magnet.index('&')
               magnet=magnet[:i]
            data=div.next.next.next.next.children.getContent().rstrip().lstrip()[9:][:-2].rstrip()
            data=data.split(" ")
            j=0
            while j<len(data):
               if data[j]=="":
                  del data[j]
               else:
                  j+=1
            month,day,year=data
            day=eval(day[:-1])
            month=['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'].index(month)+1
            year=eval(year)
            date=datetime.date(year,month,day)
            self.add_result(KickassTorrentsPluginResult(label,date,size,seeders,leechers,torrent,magnet))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            try:
               pager=htmltools.find_elements(tree.getRootElement(),"div",**{'class':'pages'})[0]
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
                  self._run_search(pattern,pn,urllib.basejoin(href,pages[i].prop('href')))
         except:
            pass



