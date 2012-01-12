Path: news.gmane.org!not-for-mail
From: Kevin Roettger <kevin@roettger.fr>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: Download pauses/stops before completed (with
	ratio enabled)
Date: Thu, 28 Jul 2011 12:03:10 +0200
Lines: 75
Approved: news@gmane.org
Message-ID: <20110728120310.32596xosr1rxvwm6@lostzone.net>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="Yes"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1311847420 7370 80.91.229.12 (28 Jul 2011 10:03:40 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 28 Jul 2011 10:03:40 +0000 (UTC)
To: libtorrent-devel@rakshasa.no
Original-X-From: libtorrent-devel-bounces@rakshasa.no Thu Jul 28 12:03:35 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1QmNRG-0002IF-Fh
	for gnbrd-libtorrent-devel@m.gmane.org; Thu, 28 Jul 2011 12:03:34 +0200
Original-Received: from rakshasa.no (rakshasa [66.220.1.220])
	by rakshasa.no (Postfix) with ESMTP id 06E9A4020A;
	Thu, 28 Jul 2011 10:03:17 +0000 (UTC)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from kimclone.lostzone.net (lostzone.net [91.121.16.190])
	by rakshasa.no (Postfix) with ESMTP id 0A58040209
	for <libtorrent-devel@rakshasa.no>;
	Thu, 28 Jul 2011 10:03:13 +0000 (UTC)
Original-Received: from lostzone.net (localhost [127.0.0.1])
	by kimclone.lostzone.net (Postfix) with ESMTP id 33BB7E6384
	for <libtorrent-devel@rakshasa.no>;
	Thu, 28 Jul 2011 12:03:11 +0200 (CEST)
Original-Received: (from www@localhost)
	by lostzone.net (8.14.3/8.14.3/Submit) id p6SA3AMP058582
	for libtorrent-devel@rakshasa.no; Thu, 28 Jul 2011 12:03:10 +0200 (CEST)
	(envelope-from kevin@roettger.fr)
Original-Received: from 195.160.149.37 ([195.160.149.37]) by lostzone.net (Horde
	Framework) with HTTP; Thu, 28 Jul 2011 12:03:10 +0200
Content-Disposition: inline
User-Agent: Dynamic Internet Messaging Program (DIMP) H3 (1.1.6)
X-BeenThere: libtorrent-devel@rakshasa.no
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: libTorrent development <libtorrent-devel.rakshasa.no>
List-Unsubscribe: <http://rakshasa.no/mailman/options/libtorrent-devel>,
	<mailto:libtorrent-devel-request@rakshasa.no?subject=unsubscribe>
List-Archive: <http://rakshasa.no/pipermail/libtorrent-devel>
List-Post: <mailto:libtorrent-devel@rakshasa.no>
List-Help: <mailto:libtorrent-devel-request@rakshasa.no?subject=help>
List-Subscribe: <http://rakshasa.no/mailman/listinfo/libtorrent-devel>,
	<mailto:libtorrent-devel-request@rakshasa.no?subject=subscribe>
Original-Sender: libtorrent-devel-bounces@rakshasa.no
Errors-To: libtorrent-devel-bounces@rakshasa.no
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2473
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2473>

Hello,

I am experiencing odd behavior using rtorrent 0.8.9. I've read the  
"RTorrentRatioHandling" page, read pretty much all the documentation  
and searched the Trac tickets, but could not find an answer to my  
problem.

What happens is that when enabling the ratio directives (between "###  
RATIO CONFIG ###" and "### RATIO CONFIG END ###" in the .rtorrent.rc  
below), all downloads I add stop or pause automatically before they  
even complete after a few minutes.

Two examples:
- 350 MB file, went into "Pausing..." state after < 10 MB uploaded and  
< 50 MB downloaded
- 4.5 GB file, stopped at 55% of the download with only 2 GB uploaded

This behavior disappears when commenting out the ratio directives in  
the file, and rtorrent works just fine.
I tested this back and forth a few times with the same result.  
Interestingly, with ratio directives on, there is no way to restart  
the torrents in question without restarting rtorrent.

Please find my complete .rtorrent.rc file below. Many thanks in  
advance for any help!

Kevin



------- .rtorrent.rc contents --------

directory = /private/rtorrent/data
session = /private/rtorrent/work

system.method.set_key =  
event.download.finished,move_complete,"execute=mv,-u,$d.get_base_path=,/private/rtorrent/completed/;d.set_directory=/private/rtorrent/completed/"
system.method.set_key =  
event.download.finished,unrar_files,"execute=~/rtorrent_unrar.py,$d.get_name="

schedule = watch_directory, 5, 60,  
load_start=/private/rtorrent/watch/*.torrent
schedule = untied_directory, 5, 60, stop_untied=

schedule = low_diskspace, 5, 120, close_low_diskspace=100M

upload_rate = 300

### RATIO CONFIG ###

ratio.enable=

ratio.min.set=100
ratio.max.set=200
ratio.upload.set=50M

system.method.set = group.seeding.ratio.command, d.close=

### RATIO CONFIG END ###

peer_exchange = no
tracker_numwant = -1
use_udp_trackers = yes
port_range = 50000-60000

min_peers = 2
max_peers = 50
min_peers_seed = 2
max_peers_seed = 60

check_hash = no
hash_interval = 100
hash_max_tries = 2

scgi_port = 127.0.0.1:51093
