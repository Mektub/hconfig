#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2, _codecs
from TorrentSearch import htmltools

class TNTVillagePluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_link,hashvalue):
      self.torrent_link=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,hashvalue=hashvalue)
   def _do_get_link(self):
      return self.torrent_link
      
class TNTVillagePlugin(TorrentSearch.Plugin.Plugin):
   def _try_login(self):
      c=httplib2.Http()
      username,password=self.credentials
      resp,content=c.request('http://forum.tntvillage.scambioetico.org/tntforum/index.php?act=Login&CODE=00')
      data=urllib.urlencode({'UserName':username,'PassWord':password,'CookieDate':'1','referer':''})
      headers={'Content-type':'application/x-www-form-urlencoded', 'Cookie':resp['set-cookie']}
      resp,content=c.request("http://forum.tntvillage.scambioetico.org/tntforum/index.php?act=Login&CODE=01","POST",data,headers)
      if 'set-cookie' in resp and 'member_id' in resp['set-cookie']:
         cookie=self._app.parse_cookie(resp['set-cookie'])
      else:
         return None
      tree=libxml2.htmlParseDoc(content,"utf-8")
      url=htmltools.find_elements(tree.getRootElement(), "a")[0].prop('href')
      headers={'Cookie':cookie}
      resp,content=c.request(url, 'GET',headers=headers)
      return cookie
   def _run_search(self,pattern,stp=0,stn=20,first_page=True):
      headers={'Content-type':'application/x-www-form-urlencoded','Cookie':self.login_cookie}
      data={'sb':'0', 'sd':'0', 'cat':'0', 'stn':str(stn), 'filter':pattern}
      if first_page:
         data['set']='Imposta filtro'
      else:
         data['next']="Pagine successive >>"
         data['stp']=str(stp)
      data=urllib.urlencode(data)
      resp,content=self.http_queue_request("http://forum.tntvillage.scambioetico.org/tntforum/index.php?act=allreleases",'POST',data,headers)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      ucpcontent=htmltools.find_elements(tree.getRootElement(), "div", id="ucpcontent")[0]
      try:
         data=htmltools.find_elements(htmltools.find_elements(ucpcontent, "table")[1], "td")[1].getContent()
         i=0
         while not data[i] in "0123456789":
            i+=1
         j=i
         while data[j] in "0123456789":
            j+=1
         self.results_count=eval(data[i:j])
      except:
         pass
      restable=htmltools.find_elements(ucpcontent, "table")[3]
      lines=htmltools.find_elements(restable,"tr",**{'class':'row4'})
      for i in lines:
         try:
            category_link,title,releaser,group,leechers,seeders,complete,dim,peers=htmltools.find_elements(i,"td")
            link=htmltools.find_elements(category_link, "a")[0]
            label=link.getContent()
            link=link.prop('href')
            leechers=eval(leechers.getContent()[1:-1].rstrip().lstrip())
            seeders=eval(seeders.getContent()[1:-1].rstrip().lstrip())
            resp,content=self.http_queue_request(link,headers=headers)
            itemtree=libxml2.htmlParseDoc(content,"utf-8")
            date=htmltools.find_elements(htmltools.find_elements(itemtree.getRootElement(), "span", **{'class':'postdetails'})[0],"b")[0].next.getContent()
            j=date.index(',')
            date=date[:j].rstrip().lstrip()
            month,day,year=date.split(' ')
            month=['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'].index(month)+1
            day=eval(day)
            year=eval(year)
            date=datetime.date(year,month,day)
            torrent_link=htmltools.find_elements(itemtree.getRootElement(),"a",title="Scarica allegato")[0]
            details_table=torrent_link.parent.parent.parent
            details=htmltools.find_elements(details_table,"tr")[1:]
            hashvalue=None
            for i in details:
               try:
                  key=htmltools.find_elements(i,"td")[0].getContent().rstrip().lstrip()
                  value=htmltools.find_elements(i,"td")[1].getContent().rstrip().lstrip()
                  if key=="Dimensione:":
                     size=value.upper()
                  if key=="info_hash:":
                     hashvalue=value
               except:
                  pass
            self.add_result(TNTVillagePluginResult(label,date,size,seeders,leechers,torrent_link.prop('href'),hashvalue))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         if htmltools.find_elements(tree.getRootElement(),"input",name="next"):
            stn=eval(htmltools.find_elements(tree.getRootElement(),"input", name="stn")[0].prop('value'))
            try:
               stp=eval(htmltools.find_elements(tree.getRootElement(),"input", name="stp")[0].prop('value'))
            except:
               stp=0
            self._run_search(pattern, stp, stn, False)
   



