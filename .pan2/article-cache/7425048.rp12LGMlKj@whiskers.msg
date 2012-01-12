Path: news.gmane.org!not-for-mail
From: Peter Lewis <plewis@aur.archlinux.org>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 10:17:01 +0000
Lines: 20
Approved: news@gmane.org
Message-ID: <7425048.rp12LGMlKj@whiskers>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <CAD5P+LZG6X=XmJYzBvn35wqAy9UQx9LWUvi6Anv_CLEGR7zmmw@mail.gmail.com>
 <1324634260.9930.71.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
X-Trace: dough.gmane.org 1324635435 26423 80.91.229.12 (23 Dec 2011 10:17:15 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:17:15 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:17:11 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re2BZ-0001y0-Fz
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:17:09 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 2C535900D4;
	Fri, 23 Dec 2011 05:17:06 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 64CDF86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:17:04 -0500 (EST)
Received-SPF: neutral (aur.archlinux.org: Domain does not state whether sender
 is authorized to use 'plewis@aur.archlinux.org' in 'mfrom' identity
 (mechanism '?all' matched)) receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="plewis@aur.archlinux.org"; helo=polymath.muddygoat.org;
 client-ip=109.74.200.35
Original-Received: from polymath.muddygoat.org (li147-35.members.linode.com
 [109.74.200.35])
 by gerolde.archlinux.org (Postfix) with ESMTP id 551C3900D4
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:17:03 -0500 (EST)
Original-Received: from whiskers.localnet
 (cpc1-king8-0-0-cust853.perr.cable.virginmedia.com [92.236.155.86])
 by polymath.muddygoat.org (Postfix) with ESMTPA id 06FB67E536
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 10:17:32 +0000 (GMT)
User-Agent: KMail/4.7.4 (Linux/3.1.5-1-ARCH; KDE/4.7.4; x86_64; ; )
In-Reply-To: <1324634260.9930.71.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38379
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38379>

On Friday 23 Dec 2011 10:57:40 Ralf Madorf wrote:
> On Fri, 2011-12-23 at 13:02 +0330, ali.mousavi@gmail.com wrote:
> > you can't use gnome 3 without pulse audio. if you don't want to use
> > pulse audio, consider using another DE or WM.
> 
> At the moment I'm using Xfce only, but I will have the libre to use
> GNOME3 too, since it works without PA. It did work without PA for my
> Debian.
> 
> As mentioned before, at the moment only GDM is installed.

Then as Ali says, just use a different DM. There are several to choose from:

https://wiki.archlinux.org/index.php/Display_Manager

And if you want to, file a bug report upstream about the dependency on pulse.

Pete.


