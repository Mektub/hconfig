Path: news.gmane.org!not-for-mail
From: Jonathan Vasquez <jvasquez1011@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 04:26:29 -0500
Lines: 23
Approved: news@gmane.org
Message-ID: <CAD+HWv8fEgOCRGUx_j38Sr1svNfLGUOxJpTpSwrr27TxmB2BZQ@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1324632398 6616 80.91.229.12 (23 Dec 2011 09:26:38 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 09:26:38 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 10:26:34 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1Oc-00039K-0q
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 10:26:34 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 2D3B19007C;
	Fri, 23 Dec 2011 04:26:30 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 5264C86163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:26:28 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.212.44 is authorized
 to use 'jvasquez1011@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="jvasquez1011@gmail.com";
 helo=mail-vw0-f44.google.com; client-ip=209.85.212.44
Original-Received: from mail-vw0-f44.google.com (mail-vw0-f44.google.com
 [209.85.212.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 477B39007B
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 04:26:28 -0500 (EST)
Original-Received: by vbbfo1 with SMTP id fo1so5998208vbb.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 01:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=7CheCkVPr59QFT7XdKHE4Enlw8EIkMdwhIYMbnWycBk=;
 b=AEQO0wszZr0YE5qhothT7xARht5GTJ5rUHSp9RuQW66g4RVPHxLO9ABTIMTHXyGDS4
 9H8Qd9Cl9G68l38zPpUOeE41Y3XlGR9UDMUD12QGEjtWQYdMkHBeMZITPdDZ3VxDdP4L
 CwUmN9ZVGC+US69soqNyzVQeKkMtEM5nGp400=
Original-Received: by 10.52.26.110 with SMTP id k14mr7313212vdg.75.1324632389206; Fri,
 23 Dec 2011 01:26:29 -0800 (PST)
Original-Received: by 10.52.30.231 with HTTP; Fri, 23 Dec 2011 01:26:29 -0800 (PST)
In-Reply-To: <1324632316.9930.45.camel@localhost.localdomain>
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
Xref: news.gmane.org gmane.linux.arch.general:38359
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38359>

I believe you have to remove each package that pulseaudio depends on. You
can reinstall them after.

On Fri, Dec 23, 2011 at 4:25 AM, Ralf Madorf <ralf.mardorf@alice-dsl.net>wrote:

> On Fri, 2011-12-23 at 11:17 +0200, Ionut Biru wrote:
> > can you clarify that you are talking about pulseaudio and not about
> > libpulse?
>
> # pacman -Rss pulseaudio
> checking dependencies...
> error: failed to prepare transaction (could not satisfy dependencies)
> :: gnome-settings-daemon: requires pulseaudio
> :: pulseaudio-alsa: requires pulseaudio
>
>
>
>


-- 
Jonathan Vasquez

