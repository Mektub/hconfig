#! /usr/bin/python
# -*- coding=utf-8 -*-

import TorrentSearch, urllib, libxml2, os, datetime, time, httplib2
import TorrentSearch.htmltools

class ExtraTorrentPluginResult(TorrentSearch.Plugin.PluginResult):
   
   def __init__(self, label, date, size, seeders, leechers, torrent_url, hashvalue, category):
      TorrentSearch.Plugin.PluginResult.__init__(self, label, date, size, seeders, leechers, hashvalue=hashvalue, category=category)
      self.torrent_url = torrent_url
      
   def _do_get_link(self):
      return self.torrent_url
      
class ExtraTorrentPlugin(TorrentSearch.Plugin.Plugin):
   
   def _run_search(self, pattern, page_url=""):
      if page_url == "":
         page_url = "http://extratorrent.com/search.php?search="+urllib.quote_plus(pattern)
         self.known_cats=[]
      resp,content=self.http_queue_request(page_url)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      
      try:
         results_count_element = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "h2")[0].next.next
         self.results_count = eval(results_count_element.getContent())
      except:
         pass
      
      results_table = TorrentSearch.htmltools.find_elements(tree.getRootElement(), "table", **{'class':'tl'})[0]
      results = TorrentSearch.htmltools.find_elements(results_table, "tr")[2:]
      
      for result in results:
         try:
            self._parse_result(page_url, result)
         except:
            pass
         if self.stop_search:
            return
      
      nav_links=TorrentSearch.htmltools.find_elements(tree.getRootElement(), "a",**{'class':'pager_link'})
      for i in nav_links:
         if i.getContent()==">":
            self._run_search(pattern, urllib.basejoin(page_url, i.prop('href')))
            break
            
   def _parse_category(self, cat):
   
      revcatsmap={
      'audio/music':[5, 54, 160, 55, 56, 57, 58, 515, 59, 60, 61, 519, 62, 233, 63, 78, 512, 306, 64, 511, 65, 66, 67, 521, 68, 526, 522, 507, 79, 70, 71, 72, 73, 74, 75, 527, 514, 230, 505, 77, 161, 420, 76, 69],
      'video/music':[69, 34],
      'video/movie':[4, 419, 28, 29, 30, 32, 628, 558, 33, 600, 37, 36, 149, 38, 39, 602, 40, 41, 150, 42, 44, 43, 603, 45, 46, 47, 48, 49, 671, 307, 601],
      'video/documentary':[35],
      'video/xxx':[552, 553],
      'video/xxx/hentai':[620],
      'picture/xxx':[535],
      'picture':[53, 52],
      'software/game':[536, 3, 136, 422, 26, 231, 627, 11, 12, 158, 13, 15, 14, 421, 10, 16],
      'software':[7, 532, 232, 18, 19, 27],
      'software/pc':[20, 25, 21, 22, 23, 24, 17],
      'video/tv':[8, 273, 581, 435, 169, 561, 153, 274, 309, 580, 310, 673, 311, 573, 118, 234, 634, 674, 675, 312, 170, 659, 275, 171, 165, 460, 163, 313, 314, 172, 276, 584, 669, 647, 173, 666, 174, 315, 175, 269, 235, 676, 176, 277, 560, 147, 677, 316, 619, 148, 661, 128, 658, 236, 317, 177, 278, 141, 279, 657, 319, 320, 133, 321, 112, 629, 178, 322, 179, 670, 651, 598, 280, 323, 324, 108, 325, 678, 180, 652, 181, 679, 680, 182, 642, 281, 183, 585, 644, 122, 167, 237, 606, 326, 327, 328, 184, 282, 615, 329, 185, 283, 186, 187, 270, 330, 238, 588, 188, 576, 331, 332, 672, 333, 334, 335, 336, 140, 612, 681, 337, 574, 571, 338, 284, 682, 189, 339, 599, 285, 340, 683, 190, 341, 411, 191, 342, 556, 343, 192, 684, 344, 286, 287, 568, 266, 288, 132, 345, 637, 590, 346, 685, 347, 239, 240, 289, 166, 290, 110, 196, 686, 412, 349, 197, 350, 351, 348, 241, 198, 199, 570, 242, 130, 200, 115, 591, 243, 578, 638, 656, 618, 650, 353, 244, 504, 665, 354, 111, 503, 687, 157, 355, 667, 357, 662, 358, 291, 617, 688, 645, 633, 579, 359, 246, 632, 245, 201, 361, 247, 356, 292, 362, 202, 193, 203, 636, 120, 363, 293, 294, 689, 364, 424, 365, 248, 646, 249, 640, 613, 250, 414, 690, 366, 204, 427, 691, 229, 692, 368, 663, 205, 251, 252, 594, 369, 206, 117, 370, 253, 254, 207, 295, 208, 604, 693, 209, 255, 694, 695, 372, 555, 605, 373, 696, 138, 210, 296, 375, 211, 697, 376, 256, 137, 649, 569, 212, 257, 297, 631, 607, 131, 159, 378, 379, 563, 139, 144, 380, 123, 124, 562, 258, 213, 614, 381, 528, 214, 298, 299, 382, 215, 217, 119, 168, 300, 383, 301, 582, 384, 583, 572, 410, 608, 586, 218, 272, 219, 510, 114, 220, 386, 610, 639, 635, 259, 648, 655, 221, 595, 387, 388, 271, 609, 222, 152, 643, 630, 109, 308, 392, 390, 698, 302, 567, 260, 597, 664, 393, 668, 223, 125, 423, 699, 611, 654, 394, 116, 577, 425, 268, 396, 216, 399, 616, 224, 596, 398, 225, 303, 565, 113, 261, 400, 401, 559, 155, 129, 226, 262, 566, 121, 402, 227, 263, 593, 304, 264, 404, 405, 575, 406, 135, 408, 194, 127, 228, 409, 265, 587],
      'video/manga':[1, 99, 86, 87, 267, 88, 89, 142, 151, 90, 91, 156, 92, 93, 95, 94, 145, 96, 524, 97, 98, 101, 508, 100, 523, 102, 146, 103, 104, 105, 107, 106, 525],
      'audio':[51],
      }
      
      catsmap={}
      
      for i in revcatsmap:
         for j in revcatsmap[i]:
            catsmap[str(j)]=i
      
      if cat in catsmap:
         return catsmap[cat]
      else:
         return ""
            
   def _parse_result(self, page_url, result_line):
      
      torrent_link, category, title, size, seeders, leechers, health = TorrentSearch.htmltools.find_elements(result_line, "td")
      torrent_url = urllib.basejoin(page_url, TorrentSearch.htmltools.find_elements(torrent_link, "a")[0].prop('href').replace('/torrent_download/','/download/'))
      if len(TorrentSearch.htmltools.find_elements(title, "a"))==2:
         details_link = TorrentSearch.htmltools.find_elements(title, "a")[0]
      else:
         details_link = TorrentSearch.htmltools.find_elements(title, "a")[1]
      title = details_link.getContent()
      details_link = urllib.basejoin(page_url, details_link.prop('href'))
      size=size.getContent()
      size=size[:-4]+" "+size[-2:]
      seeders=eval(seeders.getContent())
      leechers=eval(leechers.getContent())
      
      category=self._parse_category(TorrentSearch.htmltools.find_elements(category, "a")[0].prop('href').split('/')[-2])
      
      c=httplib2.Http()
      resp,content=self.http_queue_request(details_link)
      tree=libxml2.htmlParseDoc(content,"utf-8")
      lines=TorrentSearch.htmltools.find_elements(TorrentSearch.htmltools.find_elements(tree, "td", **{'class':'tabledata0'})[0].parent.parent,"tr")
      for i in lines:
         cells=TorrentSearch.htmltools.find_elements(i, "td")
         if cells[0].getContent()=="Info hash:":
            hashvalue=cells[1].getContent()
         elif cells[0].getContent()=="Torrent added:":
            date=cells[1].getContent().split(" ")[0]
            date=time.strptime(date,"%Y-%m-%d")
            date=datetime.date(date.tm_year, date.tm_mon, date.tm_mday)
      
      self.add_result(ExtraTorrentPluginResult(title, date, size, seeders, leechers, torrent_url, hashvalue, category))




