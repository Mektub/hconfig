Path: news.gmane.org!not-for-mail
From: Artifex Maximus <artifexor@gmail.com>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: libtorrent with clang
Date: Thu, 18 Aug 2011 20:11:09 +0200
Lines: 38
Approved: news@gmane.org
Message-ID: <CAPkuXvENhituLYC=6E9bGDYrm7aEMJCP3y1VY_zrYBVzUNFjpw@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1313691106 21329 80.91.229.12 (18 Aug 2011 18:11:46 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 18 Aug 2011 18:11:46 +0000 (UTC)
To: Libtorrent-devel mailing list <libtorrent-devel@rakshasa.no>
Original-X-From: libtorrent-devel-bounces@rakshasa.no Thu Aug 18 20:11:42 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1Qu749-0000wt-Cw
	for gnbrd-libtorrent-devel@m.gmane.org; Thu, 18 Aug 2011 20:11:41 +0200
Original-Received: from rakshasa.no (rakshasa [66.220.1.220])
	by rakshasa.no (Postfix) with ESMTP id 1E0B8106D7;
	Thu, 18 Aug 2011 18:11:13 +0000 (UTC)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41]) by rakshasa.no (Postfix) with ESMTP id 745DE106BF
	for <libtorrent-devel@rakshasa.no>;
	Thu, 18 Aug 2011 18:11:09 +0000 (UTC)
Original-Received: by pzk4 with SMTP id 4so3911258pzk.14
	for <libtorrent-devel@rakshasa.no>;
	Thu, 18 Aug 2011 11:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8g242Xmfrad9+51aVc6E8dwi3rAJn5uceRsZHoYH1xU=;
	b=UJ5Pcv9r6qyDFJeWkAzCocs5wa2w1LKIUlsdpmx8RM/lv53700NhkIQ15q5bAby+RS
	fyJh6CFK/7c2u/1OMvYtKxQb8YarSaDboWDgGaC1MV2SEfoJxaPdO2nEAZKpJNT6Uok/
	oZOXi7+klC+Hq6nYzXtsZMGweCNSVh65ZbThc=
Original-Received: by 10.142.166.15 with SMTP id o15mr512473wfe.196.1313691069072; Thu,
	18 Aug 2011 11:11:09 -0700 (PDT)
Original-Received: by 10.68.56.233 with HTTP; Thu, 18 Aug 2011 11:11:09 -0700 (PDT)
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
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2475
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2475>

Hello!

This is for information. I've tried to compile libtorrent r1270 with
clang 2.9 just for curiosity. It gives the following warnings and
error:

-1----
file_list.cc:573:14: warning: comparison of unsigned expression < 0 is
always false [-Wtautological-compare]
  if (offset < 0)
      ~~~~~~ ^ ~
1 warning generated.

-2----
poll_kqueue.cc:213:20: warning: comparison of unsigned expression < 0
is always false [-Wtautological-compare]
    if (itr->ident < 0 || itr->ident >= m_table.size())
        ~~~~~~~~~~ ^ ~
1 warning generated.

-3----
poll_select.cc:126:28: error: cannot allocate function type
'rak::cacheline_allocator<> ()' with new
  block_type* block = new (rak::cacheline_allocator<>()) block_type;
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.

I don't know how accurate they are.

I am using FreeBSD 8.2 with the following

# clang -v
clang version 2.9 (tags/RELEASE_29/final)
Target: i386-portbld-freebsd8.2
Thread model: posix

Bye,
a
