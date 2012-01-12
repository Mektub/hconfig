Path: news.gmane.org!not-for-mail
From: Jari Sundell <sundell.software@gmail.com>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: LibTorrent 0.13.0 and rTorrent 0.9.0 released
Date: Sat, 10 Dec 2011 23:03:20 +0900
Lines: 72
Approved: news@gmane.org
Message-ID: <CAH1CXAEG-NHDNyr_LAtv4kMR1wHRkkz6axW7f2FXnsgm2bmtCg@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1323525814 30840 80.91.229.12 (10 Dec 2011 14:03:34 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 10 Dec 2011 14:03:34 +0000 (UTC)
To: rtorrent mailinglist <libtorrent-devel@rakshasa.no>
Original-X-From: libtorrent-devel-bounces@rakshasa.no Sat Dec 10 15:03:30 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1RZNWS-0005ZX-DI
	for gnbrd-libtorrent-devel@m.gmane.org; Sat, 10 Dec 2011 15:03:28 +0100
Original-Received: from li4-220.members.linode.com (localhost.localdomain [127.0.0.1])
	by rakshasa.no (Postfix) with ESMTP id 5A8E8478C8;
	Sat, 10 Dec 2011 09:03:25 -0500 (EST)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from mail-ey0-f173.google.com (mail-ey0-f173.google.com
	[209.85.215.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by rakshasa.no (Postfix) with ESMTPS id F23CC478AE
	for <libtorrent-devel@rakshasa.no>;
	Sat, 10 Dec 2011 09:03:22 -0500 (EST)
Original-Received: by eaaa14 with SMTP id a14so1178888eaa.18
	for <libtorrent-devel@rakshasa.no>;
	Sat, 10 Dec 2011 06:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=KwasJ1l6ecdPDT6MlDoAR3NCtm8OFj1vlaSm+8472ls=;
	b=UIdaBjk8JQbud9nStVnqkDLPCQx9E3WgvJSePcLWmLgajENoJKBgriyeIqoDEq3jG4
	wL7o/31eorCFM/6SY3Cvjj7OsvXi5O1GdnLZ7VShqDILBTjjZQR1+CMMLRXdXclJx43G
	bbfrwm24x18IWSKb3svP4g2cNk+mW/QsdMAms=
Original-Received: by 10.213.13.134 with SMTP id c6mr770316eba.91.1323525800477; Sat,
	10 Dec 2011 06:03:20 -0800 (PST)
Original-Received: by 10.213.31.212 with HTTP; Sat, 10 Dec 2011 06:03:20 -0800 (PST)
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
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2525
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2525>

* Rewritten logging facilities, will be phased in gradually. Usage;

  log.open_file = "tracker.log",
(cat,/Users/rakshasa/tmp/tracker.log.,(system.pid))
  log.add_output = "tracker_debug", "tracker.log"

  <http://libtorrent.rakshasa.no/wiki/RTorrentLogging>

* Requesting from multiple trackers when necessary, e.g. if the first
tracker does not respond within a few seconds or when more peers are
needed.

* Automatically retrieve scrape information from all supported trackers.

* Do scrape on UDP tracker requests.

* Individual trackers now have their own timeouts, e.g. when trackers
fail they will not have to wait all other trackers to be tried before
reconnecting.

* Number of new peers received from a tracker the last time is used to
decide on when to retry.

* Keep stopped/completed tracker requests active after
TrackerController::disable() is called.

* Trace back SIGBUS errors to the download, file and offset.

* Switched to using GCC built-in function '__builtin_popcount' for
counting bits in bitfield.

* Added autoconf scripts for pthread.

* Added support for Cyrus RC4 to work around an OpenSSL RC4 bug.

* Added 'd.tracker.insert' command for adding trackers.

* Added 'd.{up,down}loads_{max,min}', and the keys 1/2/3/4 and !/@/#/$
control these.

* Added 'd.disconnect.seeders',
'd.accepting_seeders{,.enable,.disable}', 'd.wanted_chunks',
'd.timestamp.started' commands.

* Added 't.success_time_last' and 't.failed_time_last'.

* Fixed stray comma in script causing invalid LT_SMP_CACHE_BYTES value
to be set.

* Fixed 'm_data.wanted_chunks() == 0' exception in
Download::hash_check(...). #2664

* Fixed a potential issue causing high loads while waiting for main
thread to exit polling. #2661

* Fixed an issue where SCGI m_task queue could overflow as the check
was not working properly.

* Fixed CLang compatibility issues.

* Fixed 'd.directory.set' so it detects that torrent data being moved
happens after setting the new directory.

http://libtorrent.rakshasa.no/downloads/libtorrent-0.13.0.tar.gz
http://libtorrent.rakshasa.no/downloads/rtorrent-0.9.0.tar.gz

The whole tracker related code has been rewritten so as to get new
downloads started quicker and to be smarter at selecting trackers for
new peers. As the code is very new it likely has quite a few bugs, so
be aware.

Jari Sundell
