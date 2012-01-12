#! /usr/bin/python

# -*- coding=utf-8 -*-



import TorrentSearch, libxml2, datetime, os, httplib2, urllib, time, datetime

from TorrentSearch import htmltools



class BTSCENETorrentPluginResult(TorrentSearch.Plugin.PluginResult):

   def __init__(self,label,date,size,seeders,leechers,reflink,nb_comments,filelist):

      self.reflink,magnet=self._parseLinks(reflink)

      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,magnet,nb_comments=nb_comments)

      self.filelist = filelist

      self.filelist_loaded = True

   def _do_get_link(self):

      return self.reflink

   def _parseLinks(self,url):

      c=httplib2.Http()

      resp,content=c.request(url)

      tree=libxml2.htmlParseDoc(content,"utf-8")

      links=htmltools.find_elements(tree.getRootElement(),"a")

      reflink=""

      magnet=None

      for i in links:

         if i.getContent().lstrip().rstrip()=="Download torrent":

            reflink=urllib.basejoin(url,i.prop('href'))

         if i.getContent().lstrip().rstrip()=="magnet link":

            magnet=urllib.basejoin(url,i.prop('href'))

            if "&" in magnet:

               j=magnet.index("&")

               magnet=magnet[:j]

      return reflink,magnet

      

class BTSCENETorrentPlugin(TorrentSearch.Plugin.Plugin):

   def _parseDate(self,data):

      count,unit = data.split(" ")

      count = int(count)

      year = int(time.strftime('%Y'))

      month = int(time.strftime('%m'))

      day = int(time.strftime('%d'))

      res = datetime.date(year,month,day)

      if unit=='day' or unit=='days':

         while count>0:

            res = res-datetime.timedelta(1)

            count-=1

      elif unit=='week' or unit=='weeks':

         while count>0:

            res = res-datetime.timedelta(7)

            count-=1

      elif unit=='month' or unit=='months':

         while count>0:

            month -= 1

            if month==0:

               month=12

               year-=1

            count-=1

         res = datetime.date(year,month,day)

      else:

         while count>0:

            year -= 1

            count-=1

         res = datetime.date(year,month,day)

      return res

   def _run_search(self,pattern,page=1,href=None):

      if href==None:

         href="http://www.btscene.eu/search/term/%s/cat/0/"%urllib.quote_plus(pattern)

      resp, content=self.http_queue_request(href)

      tree=libxml2.htmlParseDoc(content,"utf-8")

      try:

         data = htmltools.find_elements(tree.getRootElement(), "div", **{'class':'srch'})[0].getContent().rstrip().lstrip()

         i = data.index(' ')

         self.results_count=eval(data[:i])

      except:

         pass

      restable=htmltools.find_elements(tree.getRootElement(), "table", **{'class':'tor'})[0]

      lines=htmltools.find_elements(restable,"tr")[1:]

      for i in lines:

         try:

            if i.prop('id') and i.prop('id')[0]=="_":

               link,size,seeders,leechers=htmltools.find_elements(i,"td")

               date = htmltools.find_elements(link, "div", **{'class':'subinfo'})[0].children.getContent().rstrip().lstrip().split(" ", 3)

               date=self._parseDate(date[0]+" "+date[1])

               details_link = htmltools.find_elements(link,"a")[0]

               label=details_link.prop('title')

               link=urllib.basejoin(href,htmltools.find_elements(link,"a")[0].prop('href'))

               size=size.getContent()

               resp,content = self.http_queue_request(urllib.basejoin(href, details_link.prop('href')))

               itemtree=libxml2.htmlParseDoc(content,"utf-8")

               try:

                  data = htmltools.find_elements(htmltools.find_elements(itemtree.getRootElement(), "ul", **{'class':'tabbernav'})[0], "li")[3].getContent()

                  j = data.index('(')+1

                  data = data[j:]

                  j = data.index(')')

                  data = data[:j]

                  nb_comments = int(data)

               except:

                  nb_comments = 0

               filelist = TorrentSearch.Plugin.FileList()

               try:

                  ul = htmltools.find_elements(htmltools.find_elements(itemtree.getRootElement(), "div", **{'class':'files_view'})[0], "ul")[0]

                  for item in htmltools.find_elements(ul, "li"):

                     if item.prop("class")!="folder":

                        data = item.getContent()

                        j = len(data)-1

                        while data[j]!=" ":

                           j-=1

                        j-=1

                        while data[j]!=" ":

                           j-=1

                        filename = data[:j].rstrip().lstrip()

                        filesize = data[j:].rstrip().lstrip()

                        filelist.append(filename,filesize)

               except:

                  pass

               try:

                  seeders=eval(seeders.getContent())

               except:

                  seeders=0

               try:

                  leechers=eval(leechers.getContent())

               except:

                  leechers=0

               self.add_result(BTSCENETorrentPluginResult(label,date,size,seeders,leechers,link,nb_comments,filelist))

         except:

            pass

         if self.stop_search:

            return

      if not self.stop_search:

         try:

            try:

               pager=htmltools.find_elements(tree.getRootElement(),id="f")[0].parent

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



