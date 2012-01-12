Path: news.gmane.org!not-for-mail
From: Jari Sundell <sundell.software@gmail.com>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: Re: LibTorrent 0.13.0 and rTorrent 0.9.0 released
Date: Tue, 13 Dec 2011 18:39:23 +0900
Lines: 28
Approved: news@gmane.org
Message-ID: <CAH1CXAF_oQiZA0H1SWnKTJFrFBQhg9ERVtJbhBMqOnWdL8wYrw@mail.gmail.com>
References: <CAH1CXAEG-NHDNyr_LAtv4kMR1wHRkkz6axW7f2FXnsgm2bmtCg@mail.gmail.com>
	<4EE71714.2090506@hotplug.ru>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1323769173 10106 80.91.229.12 (13 Dec 2011 09:39:33 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Tue, 13 Dec 2011 09:39:33 +0000 (UTC)
Cc: rtorrent mailinglist <libtorrent-devel@rakshasa.no>
To: Emil Muratov <gpm@hotplug.ru>
Original-X-From: libtorrent-devel-bounces@rakshasa.no Tue Dec 13 10:39:29 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1RaOpc-0002s7-Hk
	for gnbrd-libtorrent-devel@m.gmane.org; Tue, 13 Dec 2011 10:39:28 +0100
Original-Received: from li4-220.members.linode.com (localhost.localdomain [127.0.0.1])
	by rakshasa.no (Postfix) with ESMTP id 54DB0479BB;
	Tue, 13 Dec 2011 04:39:27 -0500 (EST)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from mail-ey0-f173.google.com (mail-ey0-f173.google.com
	[209.85.215.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by rakshasa.no (Postfix) with ESMTPS id 381C2479B8
	for <libtorrent-devel@rakshasa.no>;
	Tue, 13 Dec 2011 04:39:25 -0500 (EST)
Original-Received: by eaaa14 with SMTP id a14so2895158eaa.18
	for <libtorrent-devel@rakshasa.no>;
	Tue, 13 Dec 2011 01:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=IkvlXJEzHbbJQpXs98Q2eCQmFcyxKq8OJBg6bVZmwPg=;
	b=RCckzubq5P8D0WDGAbDryANf2tW7hPBkfQobhgTIdG29LkLChK3T/criuE2v6WbE7e
	VRwaEt0aEzRiTEt9YvXAGcbuL/4G0MY08J8JNSTENGqOB2AayNK5RtF0XNJtOFBiPZDJ
	PjChu/eGPNZRTcVsp0NEk+DrfkUhleXG2UN+Q=
Original-Received: by 10.14.4.13 with SMTP id 13mr3096988eei.209.1323769163398; Tue, 13
	Dec 2011 01:39:23 -0800 (PST)
Original-Received: by 10.213.113.200 with HTTP; Tue, 13 Dec 2011 01:39:23 -0800 (PST)
In-Reply-To: <4EE71714.2090506@hotplug.ru>
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
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2534
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2534>

On Tue, Dec 13, 2011 at 6:12 PM, Emil Muratov <gpm@hotplug.ru> wrote:
> I noticed some strange behavior here when enabling tracker_debug.
> In the log file I can see something like this
>
> 1323766520 D --- Tracker UDP send ---
> ...........[and here goes about 4k spaces 0x20 before a new line]
>
> Sometimes there are only 16 spaces, sometime 26. Never mind if it is 16 or
> 26, but 4k make it very difficult to do 'tail -f' =A0for ex.
> Another catch that those spaces comes only after UDP tracker messages, if
> its http tracker than it logs only 3 dashes '---' =A0as sepparator, nice =
and
> shiny. So those spaces and no info about UDP req - is this a bug or an
> unknown/mis-configured feature?

I've changed the logging to use the same format as http request (to be
committed later), do note however that UDP trackers send mostly
unprintable characters so to see the content you need to use other
tools.

Also I fixed it to print a fixed number of characters (based on the
size of the data) rather than nul terminated string. This was causing
requests/replies to be cut short.

BTW, tracker_debug is very verbose and usually tracker_info is what you wan=
t.

Jari
