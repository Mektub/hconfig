Path: news.gmane.org!not-for-mail
From: Keshav P R <the.ridikulus.rat-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Newsgroups: gmane.linux.arch.releng
Subject: Re: grub install not listing partitions
Date: Fri, 16 Dec 2011 18:39:49 +0530
Lines: 90
Approved: news@gmane.org
Message-ID: <CAMPnHXwHGbBUbWhiawsSE879Wj78nZrdePAFUqiWgLc63F6+ng@mail.gmail.com>
References: <20111215104054.7f4af5f3@plaetinck.be>
 <4EEAC2DC.2030809@pyther.net>
 <CA+aUsaiRWbngg_axqP9ui7Uw6Opnb7G9uC3ujgwJDQi39gCDrQ@mail.gmail.com>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1324041024 10421 80.91.229.12 (16 Dec 2011 13:10:24 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 16 Dec 2011 13:10:24 +0000 (UTC)
To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Fri Dec 16 14:10:19 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1RbXYF-0006nY-78
	for glar-arch-releng@m.gmane.org; Fri, 16 Dec 2011 14:10:15 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 0E07490049;
	Fri, 16 Dec 2011 08:09:39 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 990A78615C
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri, 16 Dec 2011 08:09:37 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.161.172 is
 authorized to use 'the.ridikulus.rat-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org' in 'mfrom' identity
 (mechanism 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="the.ridikulus.rat-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org";
 helo=mail-gx0-f172.google.com; client-ip=209.85.161.172
Original-Received: from mail-gx0-f172.google.com (mail-gx0-f172.google.com
 [209.85.161.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 5922390028
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri, 16 Dec 2011 08:09:36 -0500 (EST)
Original-Received: by ggnk5 with SMTP id k5so2553689ggn.3
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri, 16 Dec 2011 05:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :content-type; bh=SjPYbG0xIwI1+QbSDnhznP3OzzCr7YWLdgnF1SPblaE=;
 b=rodyb3BEWlMg83CceBWB4p6+860ZGx8yQMXxTjsQ8Aua+x/JrtAb9bfnezcJs8rTy9
 KI/2sotkc/8gXphCOXJfMctd0iM6QGgi75fr1VuL6uv/ppqD1RYqKEid44Xoq7yhLVab
 /TT+KNIyN/ZHOuNzJaC2Jjat9ohhmBuJZHtrg=
Original-Received: by 10.182.40.69 with SMTP id v5mr3921860obk.30.1324041011315; Fri,
 16 Dec 2011 05:10:11 -0800 (PST)
Original-Received: by 10.182.152.105 with HTTP; Fri, 16 Dec 2011 05:09:49 -0800 (PST)
In-Reply-To: <CA+aUsaiRWbngg_axqP9ui7Uw6Opnb7G9uC3ujgwJDQi39gCDrQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
X-Content-Filtered-By: Mailman/MimeDel 2.1.14
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
Xref: news.gmane.org gmane.linux.arch.releng:941
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/941>

On Fri, Dec 16, 2011 at 15:04, Eric Fernandez <zeb-KWsKkhpdK3gDXYZnReoRVg@public.gmane.org> wrote:

> 2011/12/16 Matthew Gyurgyik <pyther-H7dpiqUitzOsTnJN9+BGXg@public.gmane.org>:
> >
> > I agree with Thomas.
> >
> > 1.) There are better alternatives to installing grub on a partition (see
> > Thomas' mail).
> >
> > 3.) Don't use grub-legacy (not supported upstream or maintained). Use
> > syslinux (installer) or grub2 (manually).
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
>
I suggest someone should replace grub-legacy with syslinux as the
recomended bootloader in the Beginner's Guide (I do have a wiki account but
skeptical about editing the "Guide" wiki article myself). There is already
a bug report to remove grub-legacy from base
https://bugs.archlinux.org/task/26187 . But if you really want people to
stop using grub-legacy (which is logical given that it is surviving with
the help of many patches and still doesn't support many newer technologies
like GPT, BTRFS etc.), then you should stop providing "grub" as an option
in AIF and force them to do it manually similar to grub2, and then drop it
from core.

Grub2 is not KISS, but technically much better than grub-legacy (upstream
considers grub2 1.99 to be more stable than grub-legacy 0.97 minus the
patches), with support of virtually all the newer technologies out there.
It takes a lot of work to make Grub2 work with AIF. Also the upstream is in
high flux (even command options are changing between releases). I know this
because I am tracking the grub2 bzr development. Even the extra grub2
packages sometimes use bzr snapshots as source to include upstream bug
fixes.

So instead of bothering about rapidly changing grub2 and dead grub-legacy,
I would suggest making syslinux as the default (and for now the only
bootloader) in AIF.

 > Installing grub to a partition is an uncommon setup and used by few
> users,
> > Those who really want to install grub to a partition can do so manually.
>
> Well, that is against the KISS principle. The fact it is uncommon is
> irrelevant for a distro like Arch, which is not suppose to hide
> options for their own good (especially when users report having used
> the partition installation with no problem).
>
>
I don't see any issue with this. Sometimes scripting bootloader
installation is a pain compared to directly installing manually. Matthew
simply pointed out that supporting grub installation to a partition might
be difficult from a shell-scripting/automation point of view (which is what
happens in the installer) as compared to telling the user to do it manually
(this is my opinion, I haven't used grb-legacy to comment on the difficulty
of installing it to a partition, I use grub2-bios). He is not hiding
anything. Users by themselves should be able to identify if it is possible
to install the bootloader to the partition instead of the MBR (in BIOS
systems), and should be able to do it themselves.

Not everything (read use-cases) can be done by the installer script itself.
I did shell scripting for Archboot installer grub2-bios and grub2-uefi
support and it is not so simple to install a bootloader, especially when
you have very less/minimum user input, as bootloader, firmware and the
partitioning scheme are highly integrated and all of them should be
considered. For example in case of grub2-bios in MBR it requires atleast 1
MiB gap after the 512-byte MBR gap, while in GPT it requires a 1 MiB
bios_grub partition. In case of grub2-uefi (or any UEFI bootloader) a GPT
disk with atleast one >=200 MiB FAT32 UEFISYS partition is required.
Supporting grub2 in the installer is much more than running grub-install as
these pre-requisites should be satisfied for which proper partitioning
tools must be used. For both MBR and GPT GNU Parted is better when compared
to util-linux sfdisk/cfdisk which support only MBR.

Regards.

Keshav

