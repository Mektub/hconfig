#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, time, datetime, os, httplib2, httplib
from TorrentSearch import htmltools

class SUMOTorrentPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,reflink,refinfo,nb_comments,details_url):
      try:
         magnet=self._get_magnet(refinfo)
      except:
         magnet=None
      self.details_url=details_url
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,magnet,nb_comments=nb_comments)
      self.reflink=reflink
      
   def _get_magnet(self,url):
      i=len(url)-1
      while url[i]!='/':
         i-=1
      url=url[:i+1]+urllib.quote_plus(url[i+1:])
      c=httplib2.Http()
      resp,content=c.request(url)
      if "set-cookie" in resp:
         cookie=resp['set-cookie']
      else:
         cookie=None
      tree=libxml2.htmlParseDoc(content,"utf-8")
      form=htmltools.find_elements(tree.getRootElement(),"form",id="frmAdultDisclaimer")
      if form:
         form=form[0]
         inputs=htmltools.find_elements(form,"input")
         body={}
         for i in inputs:
            body[i.prop('name')]=i.prop('value')
         del body['btn_Decline']
         body=urllib.urlencode(body)
         headers={'Content-type':"application/x-www-form-urlencoded"}
         if cookie:
            headers['Cookie']=cookie
         url=urllib.basejoin(url,form.prop('action'))
         resp,content=c.request(url,"POST",body,headers)
         if "set-cookie" in resp:
            cookie=resp['set-cookie']
         if cookie:
            headers['Cookie']=cookie
         url=urllib.basejoin(url,resp["location"])
         resp,content=c.request(url,headers=headers)
         tree=libxml2.htmlParseDoc(content,"utf-8")
      return htmltools.find_elements(tree.getRootElement(),"a",**{'class':'dwld_links'})[0].prop('href')
   def _do_get_link(self):
      i=len(self.reflink)-1
      while self.reflink[i]!='/':
         i-=1
      url=self.reflink[:i+1]+urllib.quote_plus(self.reflink[i+1:])
      utype,path=urllib.splittype(url)
      host,path=urllib.splithost(path)
      c=httplib.HTTPConnection(host)
      c.request('GET',path)
      resp=c.getresponse()
      content=resp.read()
      tree=libxml2.htmlParseDoc(content,"utf-8")
      link=htmltools.find_elements(tree.getRootElement(),id="downloadLink")[0]
      return link.prop('href')
   def _parseCommentDate(self, date):
      i = date.index(",")+2
      date = date[i:]
      date,hour = date.split(" at ")
      day,month,year = date.split(" ")
      hour,minute,second=hour.split(":")
      hour=int(hour)
      minute=int(minute)
      second=int(second)
      day=int(day)
      year=int(year)
      month = ["January","February","March","April","May","June","July","August","September","October","November","December"].index(month)+1
      return datetime.datetime(year,month,day,hour,minute,second)
   def _do_load_filelist(self):
      i=len(self.details_url)-1
      while self.details_url[i]!='/':
         i-=1
      url=self.details_url[:i+1]+urllib.quote_plus(self.details_url[i+1:])
      res = TorrentSearch.Plugin.CommentsList()
      c=httplib2.Http()
      resp,content=c.request(url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
   def _do_load_comments(self):
      i=len(self.details_url)-1
      while self.details_url[i]!='/':
         i-=1
      url=self.details_url[:i+1]+urllib.quote_plus(self.details_url[i+1:])
      res = TorrentSearch.Plugin.CommentsList()
      c=httplib2.Http()
      resp,content=c.request(url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         comments_div = htmltools.find_elements(tree.getRootElement(), "div", id="comments")[0]
         comments_table = htmltools.find_elements(htmltools.find_elements(comments_div, "table", **{'class':'commentsTable'})[0], "table", width="750px")[0]
         lines = htmltools.find_elements(comments_table, "tr", 1)
         for i in range(len(lines)/3):
            try:
               title_line = lines[3*i]
               content_line = lines[3*i+1]
               username_node = htmltools.find_elements(title_line, "strong")[0]
               username = username_node.getContent()
               date_data = username_node.next.getContent().rstrip().lstrip()[3:]
               try:
                  date = self._parseCommentDate(date_data)
               except:
                  date = ""
               content = content_line.getContent()
               res.append(TorrentSearch.Plugin.TorrentResultComment(content, date, username))
            except:
               pass
      except:
         pass
      try:
         filelist = TorrentSearch.Plugin.FileList()
         table = htmltools.find_elements(htmltools.find_elements(tree.getRootElement(), "div", **{'class':'torrentFiles'})[0], "tbody")[0]
         for i in htmltools.find_elements(table, "tr", 1)[1:]:
            filename,size = htmltools.find_elements(i, "td")
            filename = filename.getContent()
            size = size.getContent().replace('Bytes', 'B')
            filelist.append(filename,size)
         self.filelist = filelist
         self.filelist_loaded = True
      except:
         pass
      return res
      
class SUMOTorrentPlugin(TorrentSearch.Plugin.Plugin):
   TITLE="SUMOTorrent.com"
   def _parseDate(self,data):
      day,month,year=data.split(" ")
      while day[0]=="0":
         day=day[1:]
      month=["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].index(month)+1
      return datetime.date(eval(year),month,eval(day))
   def _run_search(self,pattern,page=1,href=None):
      if href==None:
         href="http://www.sumotorrent.com/searchResult.php?search="+urllib.quote_plus(pattern)
      try:
         resp,content=self.http_queue_request(href)
      except httplib2.FailedToDecompressContent:
         if not self.stop_search:
            self._run_search(pattern,page,href)
         return
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         count_div=htmltools.find_elements(htmltools.find_elements(tree.getRootElement(),id="trait")[0].parent,"div")[0]
         data=count_div.getContent()
         i=data.index("(")+1
         data=data[i:]
         i=data.index(" ")
         data=data[:i]
         self.results_count=eval(data)
      except:
         pass
      restable=htmltools.find_elements(tree.getRootElement(),id="panel")[0].next
      while restable and restable.type!="element":
         restable=restable.next
      lines=htmltools.find_elements(restable,"tr",1)
      for i in lines[1:]:
         try:
            if i.hasProp('class') and not i.hasProp('id'):
               cells=htmltools.find_elements(i,"td",1)
               date,typ,name,comments,links,size,seeds,leeches,more=cells
               date=self._parseDate(date.getContent().lstrip().rstrip())
               refmagnet=urllib.basejoin(href,htmltools.find_elements(name,"a")[0].prop('href'))
               name_link = htmltools.find_elements(name,"a")[0]
               details_url = urllib.basejoin(href, name_link.prop("href"))
               name=name_link.getContent().lstrip().rstrip()
               nb_comments_zone = htmltools.find_elements(comments, "strong")
               nb_comments = 0
               try:
                  if len(nb_comments_zone)==1:
                     nb_comments = int(nb_comments_zone[0].getContent().rstrip().lstrip())
               except:
                  pass
               size=size.getContent().lstrip().rstrip()
               seeds=eval(seeds.getContent().lstrip().rstrip())
               leeches=eval(leeches.getContent().lstrip().rstrip())
               result=SUMOTorrentPluginResult(name,date,size,seeds,leeches,htmltools.find_elements(links,"a")[0].prop('href'),refmagnet,nb_comments,details_url)
               self.add_result(result)
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         try:
            pager=htmltools.find_elements(tree.getRootElement(),id="pager")
            if pager:
               pages=htmltools.find_elements(pager[0],"a")
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
                  self._run_search(pattern,pn,pages[i].prop('href'))
         except:
            pass




