Path: news.gmane.org!not-for-mail
From: Adam Cutchin <cutchin@gmail.com>
Newsgroups: gmane.network.bit-torrent.rtorrent.devel
Subject: chgrp on torrent completion
Date: Fri, 30 Sep 2011 14:25:31 -0400
Lines: 22
Approved: news@gmane.org
Message-ID: <CAHb=wJmKnCOxW6J+VSxAm_vd_vumQ81Pe=UaMhyDyk-jY3EQYg@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1317407176 13197 80.91.229.12 (30 Sep 2011 18:26:16 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 30 Sep 2011 18:26:16 +0000 (UTC)
To: libtorrent-devel@rakshasa.no
Original-X-From: libtorrent-devel-bounces@rakshasa.no Fri Sep 30 20:26:12 2011
Return-path: <libtorrent-devel-bounces@rakshasa.no>
Envelope-to: gnbrd-libtorrent-devel@m.gmane.org
Original-Received: from li4-220.members.linode.com ([66.220.1.220] helo=rakshasa.no)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <libtorrent-devel-bounces@rakshasa.no>)
	id 1R9hmm-0000tI-3I
	for gnbrd-libtorrent-devel@m.gmane.org; Fri, 30 Sep 2011 20:26:12 +0200
Original-Received: from rakshasa.no (rakshasa [66.220.1.220])
	by rakshasa.no (Postfix) with ESMTP id CA32C106CB;
	Fri, 30 Sep 2011 18:25:54 +0000 (UTC)
X-Original-To: libtorrent-devel@rakshasa.no
Delivered-To: libtorrent-devel@rakshasa.no
Original-Received: from mail-gx0-f173.google.com (mail-gx0-f173.google.com
	[209.85.161.173]) by rakshasa.no (Postfix) with ESMTP id 41DDB106C9
	for <libtorrent-devel@rakshasa.no>;
	Fri, 30 Sep 2011 18:25:52 +0000 (UTC)
Original-Received: by ggnp2 with SMTP id p2so226284ggn.18
	for <libtorrent-devel@rakshasa.no>;
	Fri, 30 Sep 2011 11:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type
	:content-transfer-encoding;
	bh=qb7eegCm506dyAQ5ljm6qDQpCEmJc0FXEhnvdH3f4Iw=;
	b=RXvifniPArOrJvM4oQThP55gZOOy6m1fWtt8vyPtThinVvjN9XxzhS/mTCFipaGFp1
	FcNhMxxm0Pz4EcDp3ETXqLhhoXj8UZ8MnGSEttVD/NjgyX4XwmRe7BnycQi9oZ9EQ1R0
	9CZRFmqSbBD5M3BJ6KyZ+jI743YPv8ozU+Q0A=
Original-Received: by 10.68.4.201 with SMTP id m9mr59551006pbm.40.1317407151067; Fri,
	30 Sep 2011 11:25:51 -0700 (PDT)
Original-Received: by 10.143.15.2 with HTTP; Fri, 30 Sep 2011 11:25:31 -0700 (PDT)
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
Xref: news.gmane.org gmane.network.bit-torrent.rtorrent.devel:2489
Archived-At: <http://permalink.gmane.org/gmane.network.bit-torrent.rtorrent.devel/2489>

Hi all,
I have a remote box running rtorrent, and I have completed torrents
rsynced to another machine upon completion, via a cron job. =A0I have it
working by moving completed torrents to a separate directory, but that
seems to cause problems with torrent resumes should rtorrent get
restarted.

So I'm trying to use a group-based solution, where torrents are marked
with a separate group when they're finished.

I have this event in my .rtorrent.rc file:
system.method.set_key =3D
event.download.finished,chgrp_complete,"execute=3Dchgrp,-R,completed,$d.get=
_base_path=3D"


But it does not work.  I've not had much luck with getting any debug
information out of it, or determining if chgrp is being called or
returning an error or anything else.  Does anyone have any suggestions
or see anything I may be doing incorrectly?

Thanks much.
