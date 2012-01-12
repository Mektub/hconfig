Path: news.gmane.org!not-for-mail
From: Emil Muratov <gpm@hotplug.ru>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: Re: LibTorrent 0.13.0 and rTorrent 0.9.0 released
Date: Tue, 13 Dec 2011 13:12:52 +0400
Lines: 23
Approved: news@gmane.org
Message-ID: <4EE71714.2090506@hotplug.ru>
References: <CAH1CXAEG-NHDNyr_LAtv4kMR1wHRkkz6axW7f2FXnsgm2bmtCg@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1323767714 32206 80.91.229.12 (13 Dec 2011 09:15:14 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Tue, 13 Dec 2011 09:15:14 +0000 (UTC)
Cc: rtorrent mailinglist <libtorrent-devel@rakshasa.no>
To: Jari Sundell <sundell.software@gmail.com>
Original-X-From: libtorrent-devel-bounces@rakshasa.no Tue Dec 13 10:15:09 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1RaOS5-0000Ht-Ck
	for gnbrd-libtorrent-devel@m.gmane.org; Tue, 13 Dec 2011 10:15:09 +0100
Original-Received: from li4-220.members.linode.com (localhost.localdomain [127.0.0.1])
	by rakshasa.no (Postfix) with ESMTP id 96299479B2;
	Tue, 13 Dec 2011 04:15:06 -0500 (EST)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from gate.pikinvest.ru (gate.pikinvest.ru [87.245.155.170])
	by rakshasa.no (Postfix) with ESMTP id DED98479AE
	for <libtorrent-devel@rakshasa.no>;
	Tue, 13 Dec 2011 04:15:03 -0500 (EST)
Original-Received: from localhost (localhost [127.0.0.1])
	by gate.pikinvest.ru (Postfix) with ESMTP id A5F691C086D;
	Tue, 13 Dec 2011 13:15:01 +0400 (MSK)
Original-Received: from EX21PIK.PICompany.ru (unknown [192.168.156.131])
	by gate.pikinvest.ru (Postfix) with ESMTP id A1F0B1C0828;
	Tue, 13 Dec 2011 13:14:57 +0400 (MSK)
Original-Received: from [192.168.148.9] (192.168.148.9) by EX21PIK.PICompany.ru
	(192.168.156.131) with Microsoft SMTP Server id 14.1.355.2;
	Tue, 13 Dec 2011 13:12:52 +0400
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Thunderbird/3.1.15
In-Reply-To: <CAH1CXAEG-NHDNyr_LAtv4kMR1wHRkkz6axW7f2FXnsgm2bmtCg@mail.gmail.com>
X-BeenThere: libtorrent-devel@rakshasa.no
X-Mailman-Version: 2.1.13
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
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2533
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2533>


Good news! Thanks for your job.

> * Rewritten logging facilities, will be phased in gradually. Usage;
>
>    log.open_file = "tracker.log",
> (cat,/Users/rakshasa/tmp/tracker.log.,(system.pid))
>    log.add_output = "tracker_debug", "tracker.log"
>
>    <http://libtorrent.rakshasa.no/wiki/RTorrentLogging>

I noticed some strange behavior here when enabling tracker_debug.
In the log file I can see something like this

1323766520 D --- Tracker UDP send ---
...........[and here goes about 4k spaces 0x20 before a new line]

Sometimes there are only 16 spaces, sometime 26. Never mind if it is 16 
or 26, but 4k make it very difficult to do 'tail -f'  for ex.
Another catch that those spaces comes only after UDP tracker messages, 
if its http tracker than it logs only 3 dashes '---'  as sepparator, 
nice and shiny. So those spaces and no info about UDP req - is this a 
bug or an unknown/mis-configured feature?
