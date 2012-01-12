Path: news.gmane.org!not-for-mail
From: Dieter Plaetinck <dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org>
Newsgroups: gmane.linux.arch.releng
Subject: Re: grub install not listing partitions
Date: Fri, 16 Dec 2011 13:14:49 +0100
Lines: 51
Approved: news@gmane.org
Message-ID: <20111216131449.505c1200@plaetinck.be>
References: <20111215104054.7f4af5f3@plaetinck.be>
 <4EEAC2DC.2030809@pyther.net>
 <CA+aUsaiRWbngg_axqP9ui7Uw6Opnb7G9uC3ujgwJDQi39gCDrQ@mail.gmail.com>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324037750 19334 80.91.229.12 (16 Dec 2011 12:15:50 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 16 Dec 2011 12:15:50 +0000 (UTC)
To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Fri Dec 16 13:15:46 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1RbWhS-0006ka-3t
	for glar-arch-releng@m.gmane.org; Fri, 16 Dec 2011 13:15:42 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 4F70090046;
	Fri, 16 Dec 2011 07:15:06 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id C90268615C
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri, 16 Dec 2011 07:15:04 -0500 (EST)
Received-SPF: none (plaetinck.be: No applicable sender policy available)
 receiver=gerolde.archlinux.org; identity=mailfrom;
 envelope-from="dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org"; helo=smtp.priorweb.be;
 client-ip=62.182.61.111
Original-Received: from smtp.priorweb.be (smtp01.priorweb.be [62.182.61.111])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 9465990029
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri, 16 Dec 2011 07:15:03 -0500 (EST)
Original-Received: from [178.79.146.162] (port=52080 helo=localhost.localdomain)
 by smtp.priorweb.be with esmtps (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
 (Exim 4.72) (envelope-from <dieter-7FYLOmueu/EUehRvb1n7cg@public.gmane.org>) id 1RbWhL-00071h-MX
 for arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org; Fri, 16 Dec 2011 13:15:35 +0100
In-Reply-To: <CA+aUsaiRWbngg_axqP9ui7Uw6Opnb7G9uC3ujgwJDQi39gCDrQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
X-Mailer: Claws Mail 3.7.10 (GTK+ 2.24.8; x86_64-unknown-linux-gnu)
X-BeenThere: arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Arch Linux Release Engineering <arch-releng.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-releng>, 
 <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-releng>
List-Post: <mailto:arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-releng>,
 <mailto:arch-releng-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.releng:940
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/940>

On Fri, 16 Dec 2011 09:34:57 +0000
Eric Fernandez <zeb-KWsKkhpdK3gDXYZnReoRVg@public.gmane.org> wrote:

> 2011/12/16 Matthew Gyurgyik <pyther-H7dpiqUitzOsTnJN9+BGXg@public.gmane.org>:
> >
> > I agree with Thomas.
> >
> > 1.) There are better alternatives to installing grub on a partition
> > (see Thomas' mail).
> >
> > 3.) Don't use grub-legacy (not supported upstream or maintained).
> > Use syslinux (installer) or grub2 (manually).
> >
> 
> I appreciate these comments and gather syslinux might be a better
> solution than grub, and will look into it.
> 
> However, I would like to point out that grub (legacy) is still the
> recommended bootloader solution in the beginner's guide, and in the
> installer isos. Furthermore, grub legacy is the one in core, whereas
> grub2 is in extra. I think that it is prematurate to cripple the
> installation of a bootloader just because it is not maintained
> upstream, until we have a better replacement. If really grub legacy is
> bad, then we should phase it out and replace it with a better one,
> which should be the new default. Why not replace grub legacy with
> grub2 in the core repository and in the installer?
> 
> > Installing grub to a partition is an uncommon setup and used by few
> > users, Those who really want to install grub to a partition can do
> > so manually.
> 
> Well, that is against the KISS principle. The fact it is uncommon is
> irrelevant for a distro like Arch, which is not suppose to hide
> options for their own good (especially when users report having used
> the partition installation with no problem).
> 
> Eric

my toughts:
1) general rule: don't prevent users from doing dumb things, it also prevents doing them from smart things.
it's not our job to impose methods or configurations on users (although we can and should make recommendations)
AIF is an "enabler", it should enable users to set up their system how they want it.  So even if we are aware that installing grub in partitions can sometimes give issues, that's not a reason to make it extra hard for the user to do it, because apparently it does work for some people.
We should just put a recommendation in the selection menu to prefer the device itself instead of a partition, and that the grub install might fail if you do it in a partition.
2) saying "if you want this, do it manually" defeats the point.
3) I understand Thomas' points, but in reality, I agree that having multiple bootloaders (i.e. one in mbr, one in partition),
can make it easier to deal with distro's that happily auto-rewrite bootloader or bootloader configs.
4) I disagree with the "Listing all the block devices and partitions becomes hard to read." argument. Anyone who wants to install Arch should be at the very least mentally capable to deal with such a list.


Dieter

