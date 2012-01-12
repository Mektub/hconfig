#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, datetime, os, time, httplib2, _codecs, httplib, tempfile, commands, math
from TorrentSearch import htmltools
from PIL import Image
from operator import itemgetter

def buildvector(im):
   d1 = {}
   count = 0
   for i in im.getdata():
      d1[count] = i
      count += 1
   return d1
   
ICONSET = ['2','3','4','5','6','7','8','9','b','c','d','f','g','h','j','k','m','n','p','q','r','s','t','v','w','x','y','z']
IMAGESET = []

CAPTCHA_LETTERS_PATH = os.path.join(os.path.split(__file__)[0], 'captcha_letters_0.1.0')
if not os.path.exists(CAPTCHA_LETTERS_PATH):
   os.mkdir(CAPTCHA_LETTERS_PATH)
   
class VectorCompare:
   def magnitude(self,concordance):
      total = 0
      for word,count in concordance.iteritems():
         total += count ** 2
      return math.sqrt(total)
   def relation(self,concordance1, concordance2):
      relevance = 0
      topvalue = 0
      for word, count in concordance1.iteritems():
         if concordance2.has_key(word):
            topvalue += count * concordance2[word]
      return topvalue / (self.magnitude(concordance1) * self.magnitude(concordance2))

class FrenchTorrentDBPluginResult(TorrentSearch.Plugin.PluginResult):
   def __init__(self,label,date,size,seeders,leechers,torrent_link,poster,comments):
      self.reflink=torrent_link
      TorrentSearch.Plugin.PluginResult.__init__(self,label,date,size,seeders,leechers,nb_comments=len(comments))
      self.poster=poster
      self.poster_loaded = True
      self.comments = comments
      self.comments_loaded = True
   def _do_get_link(self):
      return self.reflink
   def _get_site_id(self):
      i=len(self.reflink)-1
      while self.reflink[i]!="=":
         i-=1
      return self.reflink[i+1:]
   def _do_load_filelist(self):
      res = TorrentSearch.Plugin.FileList()
      http=httplib2.Http()
      headers={'Cookie':self.plugin.login_cookie}
      resp,content=http.request("http://www2.frenchtorrentdb.com/?section=INFOS&id="+self._get_site_id()+"&type=1",headers=headers)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      div = htmltools.find_elements(tree.getRootElement(), "div", id="mod_infos")[0]
      pre = htmltools.find_elements(div, "pre")[0]
      files = htmltools.find_elements(pre, "p")
      cur_folder = ""
      for i in files:
         if htmltools.find_elements(i, "img")[0].prop("src")=="/themes/images/files/folder.gif":
            cur_folder = i.getContent().strip().lstrip()
            continue
         data = i.getContent().strip().lstrip()
         j=len(data)-1
         while data[j]!='(':
            j-=1
         filename,size=data[:j],data[j+1:-1]
         filename = filename.strip().lstrip()
         if cur_folder:
            filename = cur_folder+"/"+filename
         size = size.strip().lstrip()
         res.append(filename, size)
      return res
      
class FrenchTorrentDBPlugin(TorrentSearch.Plugin.Plugin):
   vector_compare = VectorCompare()
   def _try_login(self):
      if len(IMAGESET)==0:
         for letter in ICONSET:
            letter_filename = os.path.join(CAPTCHA_LETTERS_PATH, '%s.png'%letter)
            if not os.path.exists(letter_filename):
               filename, msg = urllib.urlretrieve('http://torrent-search.sourceforge.net/captcha_letters/000029_frenchtorrentdb/0.1.0/%s.png'%letter, letter_filename)
               if msg['content-type'] != 'image/png' and os.path.exists(letter_filename):
                  os.unlink(letter_filename)
            if not os.path.exists(letter_filename):
               continue
            im = Image.open(letter_filename)
            IMAGESET.append({letter:[buildvector(im)]})
      username,password=self.credentials
      c=httplib.HTTPConnection('www2.frenchtorrentdb.com')
      c.request('GET', '/')
      resp=c.getresponse()
      resp.read()
      cookie = self._app.parse_cookie(resp.getheader('set-cookie')).split(';')[0]
      c.request('GET', '/?check_cookie=1', headers={'Cookie': cookie})
      resp=c.getresponse()
      resp.read()
      c.request('GET', '/?section=LOGIN&Func=access_denied&access_needed1', headers={'Cookie': cookie})
      resp=c.getresponse()
      resp.read()
      c.request('GET', '/?section=LOGIN&getimg=1&ajax=1&mod_ajax=1', headers={'Cookie':cookie})
      resp=c.getresponse()
      captcha_data = resp.read()
      fd, filename = tempfile.mkstemp('.jpg')
      os.write(fd, captcha_data)
      os.close(fd)
      data=urllib.urlencode({'username':username,'password':password,'code':self._decode_captcha(filename),'submit':'Connexion'})
      headers={'Content-type':'application/x-www-form-urlencoded', 'Cookie':cookie}
      for i in range(5):
         c.request('POST', '/?section=LOGIN', data, headers)
         resp=c.getresponse()
         resp_data=resp.read()
         if resp.status==302 and resp.getheader('location')=='/?section=INDEX':
            return cookie
         else:
            c.request('GET', '/?section=LOGIN&Func=access_denied&access_needed1', headers={'Cookie': cookie})
            resp=c.getresponse()
            resp.read()
            c.request('GET', '/?section=LOGIN&getimg=1&ajax=1&mod_ajax=1', headers={'Cookie':cookie})
            resp=c.getresponse()
            captcha_data = resp.read()
            fd, filename = tempfile.mkstemp('.jpg')
            os.write(fd, captcha_data)
            os.close(fd)
            data=urllib.urlencode({'username':username,'password':password,'code':self._decode_captcha(filename),'submit':'Connexion'})
      return None
   def _parseDate(self, date, year, prev_month):
      i = date.index('à')
      hour = date[i+2:].rstrip().lstrip()
      date = date[:i].rstrip().lstrip()
      res=''
      try:
         if date=="Aujourd'hui" or date=="Hier":
            year = int(time.strftime('%Y'))
            month = int(time.strftime('%m'))
            day = int(time.strftime('%d'))
            res = datetime.date(year,month,day)
            if date=="Hier":
               res = res-datetime.timedelta(1)
            prev_month = res.month
         else:
            day,month=date.split(' ')
            month = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'].index(month)+1
            day = int(day)
            res=datetime.date(year,month,day)
            if month>prev_month:
               year-=1
               res=datetime.date(year,month,day)
            prev_month = month
      except:
         print date,hour
      return res, year, prev_month
   def _decode_captcha(self, filename):
      im = Image.open(filename)
      im = im.convert("P")
      im2 = Image.new("P",im.size,255)
      temp = {}
      for x in range(im.size[1]):
         for y in range(im.size[0]):
            pix = im.getpixel((y,x))
            temp[pix] = pix
            if pix in [82,88,89,52,90,53,83,125,46,47]: # these are the numbers to get
               im2.putpixel((y,x),0)
      
      inletter = False
      foundletter=False
      start = 0
      end = 0
      letters = []
      for y in range(im2.size[0]): # slice across
         for x in range(im2.size[1]): # slice down
            pix = im2.getpixel((y,x))
            if pix != 255:
               inletter = True
         if foundletter == False and inletter == True:
            foundletter = True
            start = y
         if foundletter == True and inletter == False:
            foundletter = False
            end = y
            letters.append((start,end))
         inletter=False
      
      guessword = ""
      for letter in letters:
         im3 = im2.crop(( letter[0] , 0, letter[1],im2.size[1] ))
         guess = []
         for image in IMAGESET:
            for x,y in image.iteritems():
               if len(y) != 0:
                  guess.append( ( self.vector_compare.relation(y[0],buildvector(im3)),x) )
         guess.sort(reverse=True)
         guessword = "%s%s"%(guessword,guess[0][1])
      if len(guessword)==7 and guessword[0]=='j':
         guessword = guessword[1:]
      return guessword
   def _run_search(self,pattern, page_url='', year=None, prev_month=13):
      http=httplib2.Http()
      headers={'Cookie':self.login_cookie}
      if page_url=="":
         page_url="http://www2.frenchtorrentdb.com/?name=%s&parent_cat_id=&section=TORRENTS&last_adv_cat_selected=&order_by=added&order=DESC&Rechercher=Rechercher"%urllib.quote(pattern)
      resp,content=http.request(page_url,headers=headers)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      try:
         self.results_count = int(htmltools.find_elements(htmltools.find_elements(tree.getRootElement(), "div", **{'class': 'results'})[0], "b")[0].getContent())
      except:
         pass
      results_table=htmltools.find_elements(tree.getRootElement(),"div",**{'class':'DataGrid'})[0]
      lines=htmltools.find_elements(results_table,"ul")
      if year==None:
         year = int(time.strftime("%Y"))
      for i in range(len(lines)):
         try:
            sub_cat, cat, name, size, seeders, leechers, health = htmltools.find_elements(lines[i], 'li')
            alink = htmltools.find_elements(name, "a")[0]
            link = urllib.basejoin(page_url, alink.prop('href'))
            label = alink.getContent().rstrip().lstrip()
            size = size.getContent()
            seeders = int(seeders.getContent())
            leechers = int(leechers.getContent())
            itemresp,itemcontent=http.request(link,headers=headers)
            itemtree=libxml2.htmlParseDoc(itemcontent,"utf-8")
            try:
               posters = htmltools.find_elements(itemtree.getRootElement(), "img", **{'class': 'bbcode_img'})
               if posters:
                  poster = posters[0].prop('src')
            except:
               poster = None
            links = htmltools.find_elements(htmltools.find_elements(itemtree.getRootElement(), "div", id="mod_infos_menu")[0], "a")
            torrent_link = ''
            for j in links:
               if j.prop('href').startswith('/?section=DOWNLOAD'):
                  torrent_link = urllib.basejoin(link, j.prop('href'))
            divs = htmltools.find_elements(htmltools.find_elements(itemtree.getRootElement(), "div", id="mod_infos_menu")[0], "div")
            date=''
            for j in divs:
               l = htmltools.find_elements(j, "label")
               if l and l[0].getContent()=="Date d'ajout:":
                  date = htmltools.find_elements(j, "span")[0].getContent()
            if date:
               date, year, prev_month = self._parseDate(date, year, prev_month)
            comments = TorrentSearch.Plugin.CommentsList()
            comment_year = int(time.strftime("%Y"))
            comment_prev_month = 13
            try:
               comments_div = htmltools.find_elements(itemtree.getRootElement(), "div", id="mod_comments_torrent")[0]
               comments_list = []
               for l in htmltools.find_elements(comments_div, "ul"):
                  comments_list.insert(0, l)
               for comment in comments_list:
                  username = htmltools.find_elements(htmltools.find_elements(comment, "li", **{'class':'username'})[0], "a")[0].getContent()
                  comment_txt = ""
                  comment_date = ""
                  for line in htmltools.find_elements(htmltools.find_elements(comment, "li", **{'class':'text'})[0], "p"):
                     if line.prop("class")=="date":
                        d = line.getContent()
                        k = d.index(':')
                        d = d[k+2:]
                        comment_date, comment_year, comment_prev_month = self._parseDate(d, comment_year, comment_prev_month)
                     if line.prop('class')==None:
                        comment_txt += line.getContent()+"n"
                  comments.append(TorrentSearch.Plugin.TorrentResultComment(comment_txt[:-1], comment_date, username))
            except:
               pass
            self.add_result(FrenchTorrentDBPluginResult(label,date,size,seeders,leechers,torrent_link,poster,comments))
         except:
            pass
         if self.stop_search:
            return
      if not self.stop_search:
         nav = htmltools.find_elements(tree.getRootElement(), "div", id="nav_mod_torrents")
         if nav:
            nav = htmltools.find_elements(nav[0], "div", **{'class':'right'})
            if nav and nav[0].prop('style')!='visibility: hidden':
               self._run_search(pattern, urllib.basejoin(page_url, htmltools.find_elements(nav[0], "a")[0].prop('href')), year, prev_month)
   





