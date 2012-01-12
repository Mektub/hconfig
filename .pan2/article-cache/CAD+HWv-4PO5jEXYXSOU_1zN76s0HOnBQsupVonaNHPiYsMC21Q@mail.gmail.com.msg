Path: news.gmane.org!not-for-mail
From: Jonathan Vasquez <jvasquez1011@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 04:29:02 -0500
Lines: 32
Approved: news@gmane.org
Message-ID: <CAD+HWv-4PO5jEXYXSOU_1zN76s0HOnBQsupVonaNHPiYsMC21Q@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1324632553 7489 80.91.229.12 (23 Dec 2011 09:29:13 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:29:13 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:29:10 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1R6-0004FH-7p
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:29:08 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 5057490083;
	Fri, 23 Dec 2011 04:29:04 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 09DEE86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:29:02 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.212.44 is authorized
 to use 'jvasquez1011@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="jvasquez1011@gmail.com";
 helo=mail-vw0-f44.google.com; client-ip=209.85.212.44
Original-Received: from mail-vw0-f44.google.com (mail-vw0-f44.google.com
 [209.85.212.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id F20A590082
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:29:01 -0500 (EST)
Original-Received: by vbbfo1 with SMTP id fo1so5999171vbb.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 01:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=FUXg7CrvXr5JUbYpEFQXYwyq4RxCczKsGrdX8sjsZuU=;
 b=ctuVGArw3ecE7iv7SBcC7/ye0HGdKxOm5djYf9Z7H8nC3WCv/2tPgziVnBn2dH6E+B
 wbBDWunDxH/l+3k4dIoPFXnT2tRoQGFoIcSP0riAhR53Njt8ABK5S10R/OqBy7wu0gcy
 vXsojzNsdhKQu1SY+H0pnWLLCo4VlEgI4X05w=
Original-Received: by 10.52.26.110 with SMTP id k14mr7315733vdg.75.1324632542919; Fri,
 23 Dec 2011 01:29:02 -0800 (PST)
Original-Received: by 10.52.30.231 with HTTP; Fri, 23 Dec 2011 01:29:02 -0800 (PST)
In-Reply-To: <4EF44980.8060609@archlinux.org>
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
Xref: news.gmane.org gmane.linux.arch.general:38361
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38361>

You could do that by doing pacman -Rsc pulseaudio .. but be extremely
careful with that command. It deletes everything recursively down
(cascading as man pacman puts it).

On Fri, Dec 23, 2011 at 4:27 AM, Ionut Biru <ibiru@archlinux.org> wrote:

> On 12/23/2011 11:25 AM, Ralf Madorf wrote:
> > On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
> >> can you clarify that you are talking about pulseaudio and not about
> >> libpulse?
> >
> > # pacman -Rss pulseaudio
> > checking dependencies...
> > error: failed to prepare transaction (could not satisfy dependencies)
> > :: gnome-settings-daemon: requires pulseaudio
> > :: pulseaudio-alsa: requires pulseaudio
> >
> >
> >
>
> ok then, gnome requires pulseaudio. The only way to get rid of
> pulseaudio is to get rid of gnome.
>
> --
> Ionu=C8=9B
>
>


--=20
Jonathan Vasquez

