Path: news.gmane.org!not-for-mail
From: Ralf Madorf <ralf.mardorf@alice-dsl.net>
Newsgroups: gmane.linux.arch.general
Subject: Patch: [Thread still is closed] Is there a clean
 solution to get completely rid of Pulseaudio?
Date: Mon, 26 Dec 2011 18:56:35 +0100
Lines: 61
Approved: news@gmane.org
Message-ID: <1324922195.7468.22.camel@localhost.localdomain>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <1324633877.9930.65.camel@localhost.localdomain> <4837414.sDXcEBn3Pa@leto>
 <1324638261.10606.137.camel@localhost.localdomain>
 <CAMbX1M1yd-jjsFtjEG2gpoJKed+AowEpnNS4-r=YdWbeE7JOFg@mail.gmail.com>
 <1324643423.10606.181.camel@localhost.localdomain>
 <20111223130342.GA28632@M50.none>
 <20111223143456.cd097cd2.ma1l1ists@yahoo.co.uk>
 <CAG-2HqVDV5AQSbDir9ha9Y12Uas6VQQA5JPiF1Y7gcNx_=BMwg@mail.gmail.com>
 <20111223193523.d76780fc.ma1l1ists@yahoo.co.uk>
 <CAG-2HqVA-CGFxmYnKYPat1KoNnNH0qr7CqpB5D3co6hzAk+rhA@mail.gmail.com>
 <20111226153932.60637a5c.ma1l1ists@yahoo.co.uk>
 <1324920576.7468.15.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324922224 32064 80.91.229.12 (26 Dec 2011 17:57:04 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Mon, 26 Dec 2011 17:57:04 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Mon Dec 26 18:56:57 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RfEn7-0005Tc-QL
	for glag-arch@m.gmane.org; Mon, 26 Dec 2011 18:56:54 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 40E0490212;
	Mon, 26 Dec 2011 12:56:48 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 2EEDD86171
 for <arch-general@archlinux.org>; Mon, 26 Dec 2011 12:56:47 -0500 (EST)
Received-SPF: none (alice-dsl.net: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="ralf.mardorf@alice-dsl.net"; helo=smtp-out02.alice-dsl.net;
 client-ip=88.44.60.12
Original-Received: from smtp-out02.alice-dsl.net (smtp-out02.alice-dsl.net
 [88.44.60.12])
 by gerolde.archlinux.org (Postfix) with ESMTP id CC0CE90211
 for <arch-general@archlinux.org>; Mon, 26 Dec 2011 12:56:45 -0500 (EST)
Original-Received: from out.alice-dsl.de ([192.168.125.62]) by smtp-out02.alice-dsl.net
 with Microsoft SMTPSVC(6.0.3790.3959); 
 Mon, 26 Dec 2011 18:56:47 +0100
Original-Received: from [85.182.23.215] ([85.182.23.215]) by out.alice-dsl.de over TLS
 secured channel with Microsoft SMTPSVC(6.0.3790.3959); 
 Mon, 26 Dec 2011 18:56:36 +0100
In-Reply-To: <1324920576.7468.15.camel@localhost.localdomain>
X-Mailer: Evolution 3.2.2 
X-OriginalArrivalTime: 26 Dec 2011 17:56:36.0309 (UTC)
 FILETIME=[B5E78850:01CCC3F7]
X-BeenThere: arch-general@archlinux.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: General Discussion about Arch Linux <arch-general.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-general>, 
 <mailto:arch-general-request@archlinux.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-general>
List-Post: <mailto:arch-general@archlinux.org>
List-Help: <mailto:arch-general-request@archlinux.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-general>, 
 <mailto:arch-general-request@archlinux.org?subject=subscribe>
Errors-To: arch-general-bounces@archlinux.org
Original-Sender: arch-general-bounces@archlinux.org
Xref: news.gmane.org gmane.linux.arch.general:38459
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38459>

On Mon, 2011-12-26 at 18:29 +0100, Ralf Madorf wrote:
> On Mon, 2011-12-26 at 15:39 +0000, Kevin Chadwick wrote:
> > On Sat, 24 Dec 2011 00:20:17 +0100
> > Tom Gundersen wrote:
> > 
> > > > http://marc.info/?l=openbsd-misc&m=114233317926101
> > > >
> > > > And equivelent on Linux
> > > >
> > > > http://forums.grsecurity.net/viewtopic.php?f=3&t=47
> > > >
> > > > You can use framebuffer mode or the nouveau driver instead of the
> > > > nvidia binary and still run X with RAWIO access disabled but with
> > > > limited acceleration.
> > > 
> > > Right, now I got it. You mean that there is a security hole on the
> > > machines where you don't use the open source (i.e. KMS) drivers. This
> > > is correct.
> > > 
> > > Thanks for the clarification.
> > 
> > Yeah and it may be more difficult to exploit on a system running KMS
> > drivers but unless RAWIO is closed at kernel level (compilation
> > (preferred), selinux, setcap, lcap) then the hole is still there as the
> > default stance is obviously to allow all graphics cards to work.
> 
> If it were up to me I'd appreciate your input, but note, it's OT, the
> thread is closed and in the end the mailing list police will measure the
> S/N with the S/N list meter or simply count the mails and blame me for
> too much traffic. Btw. in a German Arch forum I read "Jawoll Herr
> Wachtmeister", this can't be translated, it's ironical regarding to
> narrow-mindedness. Unfortunately there seems to be many unwritten laws
> for Arch mailing lists and forums, counter the often quoted netiquette.
> 
> So, please, open a new thread or write off-list. I e.g. answered
> off-list regarding to accusations that my knowledge about issues with PA
                        ^^^^^^^^^^^ baseless accusations
> is from 3d Party, since I could give endless much examples, I just gave
 ^^ should be (sorry for my broken English)
> one major example, AGAIN off-list, regarding to pro-audio cards that
> don't work without a fix.

... on my computer

> 
> AGAIN if it were up to me I'd allow you to continue, but it's not my
> decision. It's unwanted regarding to S/N, resp. too much traffic, so I
> decided to close this thread.
> 
> Merry Christmas,
> 
> Ralf

Anyway, I'll be quiet regarding to this CLOSED thread now and I ask
everybody else to hush too.

Nevertheless, searching Arch forums and Arch mailing list archives lead
to useful information, even if every second mail beef about "wrong
questions", wrong "posting style" :(.


