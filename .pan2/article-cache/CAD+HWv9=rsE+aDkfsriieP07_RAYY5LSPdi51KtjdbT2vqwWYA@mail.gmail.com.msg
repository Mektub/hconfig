Path: news.gmane.org!not-for-mail
From: Jonathan Vasquez <jvasquez1011@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 05:13:01 -0500
Lines: 66
Approved: news@gmane.org
Message-ID: <CAD+HWv9=rsE+aDkfsriieP07_RAYY5LSPdi51KtjdbT2vqwWYA@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <CAGAVQTFKQxo4a2Bjg8nBPyjE+Ue5QKNdB1y8A8WjOXbMBjX49w@mail.gmail.com>
 <1324635069.10606.9.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1324635190 24604 80.91.229.12 (23 Dec 2011 10:13:10 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:13:10 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:13:06 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re27c-0008Qa-VY
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:13:05 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id B80AA900AA;
	Fri, 23 Dec 2011 05:13:01 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 0761A86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:13:00 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.220.172 is
 authorized to use 'jvasquez1011@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="jvasquez1011@gmail.com";
 helo=mail-vx0-f172.google.com; client-ip=209.85.220.172
Original-Received: from mail-vx0-f172.google.com (mail-vx0-f172.google.com
 [209.85.220.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id E6A4E900A7
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:12:59 -0500 (EST)
Original-Received: by vcbfk13 with SMTP id fk13so7002018vcb.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 02:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=xJqphEn0NXjigKN2Yp4Xeo/dowz3KNqwk23jXHYpRYw=;
 b=jlZm55U4SBYFgOpCuAQV4vmDjKnuSSheqrBZWx1tbULda+QwGQLUE93IG9NleZwVF5
 G23adcQ4/+BomHLvihNRqnJsZAw8h/f6fp1VRheOVB7lr2+GzqocyCbNVfA+CaQ/t5Ih
 yCKesOFUtAk9+ZY9sArvRDFZgKXM6S/ziwih8=
Original-Received: by 10.220.107.17 with SMTP id z17mr8827154vco.0.1324635181193; Fri,
 23 Dec 2011 02:13:01 -0800 (PST)
Original-Received: by 10.52.30.231 with HTTP; Fri, 23 Dec 2011 02:13:01 -0800 (PST)
In-Reply-To: <1324635069.10606.9.camel@localhost.localdomain>
X-Content-Filtered-By: Mailman/MimeDel 2.1.14
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
Xref: news.gmane.org gmane.linux.arch.general:38376
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38376>

You should speak to GNOME about why they require PA. If Debian doesn't
require it, then they most likely patched it to not require it. Arch
doesn't really patch .. avoids it if possible.

On Fri, Dec 23, 2011 at 5:11 AM, Ralf Madorf <ralf.mardorf@alice-dsl.net>wrote:

> On Fri, 2011-12-23 at 03:39 -0600, C Anthony Risinger wrote:
> > Do not install an application requiring it?
>
> Why does GDM require it?
> Why does GNOME3 require it?
>
> > You'll need to provide context about what you're trying to accomplish
> > (clear and simple goals) and what you've already done (eg. I ran command
> > xyz, I installed gnome, etc ...)
>
> The goal is a DAW with a professional audio card from RME. Since PA
> isn't needed, but it's always good to cause trouble, I won't have it
> installed.
>
> I wish to have the libre to use GNOME3, even if I now use Xfce only.
>
> > So far we've only learned PA probably sux, you don't want it on you
> system,
> > and some random bits about Debian ;-) ... best to assume nothing of the
> > solution since that's what you are here requesting.  Simply state your
> > end-goals, the issue(s), and the path taken thus far.
>
> I installed ArchLinux, upgraded it by the basic repositories and only
> installed Xfce, GDM, some mailers, NVIDIA driver, nothing else until
> now.
>
> I'm going to set up a DAW and graphic machine with a kernel-rt, Ardour3
> with video timeline, GIMP etc..
>
> I like to install GNOME3 too.
>
> > IIRC PA is split into a library package, among others. Many pkgs will dep
> > libpulse, but it cannot be loaded (or possibly will not) without the
> > accompanying support packages.
> >
> > Audio is not my thing, but I absorb passively often as possible.  PA will
> > play nicely with other impls by suspending itself and releasing the
> > hardware when requested, allowing (JACK and ?) others to assume control.
> > My guess is there is not an issue here ... I suggest moving forward
> until a
> > concrete problem is encountered, or running headless.
> >
> > While I'm not into pro audio, I do use PA successfully on several
> machines
> > daily with great satisfaction and zero issue; be sure you understand the
> > difference between ALSA, alsa-lib, and PA.
>
> It already is an issue. I don't need PA for my work. Even if it should
> cause no issue, I don't need it.
>
> - Ralf
>
>
>
>


-- 
Jonathan Vasquez

