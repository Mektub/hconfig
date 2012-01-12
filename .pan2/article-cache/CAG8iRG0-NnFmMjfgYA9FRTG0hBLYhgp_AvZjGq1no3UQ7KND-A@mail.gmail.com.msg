Path: news.gmane.org!not-for-mail
From: fredbezies <fredbezies@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
	of Pulseaudio?
Date: Fri, 23 Dec 2011 11:01:08 +0100
Lines: 35
Approved: news@gmane.org
Message-ID: <CAG8iRG0-NnFmMjfgYA9FRTG0hBLYhgp_AvZjGq1no3UQ7KND-A@mail.gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <4EF44735.8050009@archlinux.org>
 <1324632316.9930.45.camel@localhost.localdomain>
 <4EF44980.8060609@archlinux.org>
 <CAD5P+LZG6X=XmJYzBvn35wqAy9UQx9LWUvi6Anv_CLEGR7zmmw@mail.gmail.com>
 <1324634260.9930.71.camel@localhost.localdomain>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
X-Trace: dough.gmane.org 1324634499 20123 80.91.229.12 (23 Dec 2011 10:01:39 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:01:39 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:01:35 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re1wU-0002ou-Li
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:01:34 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id F3F2B90099;
	Fri, 23 Dec 2011 05:01:29 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 97E4386163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:01:28 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.216.172 is
 authorized to use 'fredbezies@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="fredbezies@gmail.com";
 helo=mail-qy0-f172.google.com; client-ip=209.85.216.172
Original-Received: from mail-qy0-f172.google.com (mail-qy0-f172.google.com
 [209.85.216.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 7A54890091
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:01:28 -0500 (EST)
Original-Received: by qcsf15 with SMTP id f15so5534152qcs.3
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 02:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :content-type; bh=rf8deW4wfkoLtTAKlO9EoOn2C+iyKVnIRYt9h/0NTPY=;
 b=kwKPrKuSkPxZ/9BgFhlJoiDbKubmn+B7HTtn43+GvQTlyo4g4D7Ksxx6KaCQpawhIh
 9h4vSWIVSGDZbScmV39Diu9YLW/c/rDdp0nBjdTdX8nVe1uxDqA3qzcD2gGaOOygUGdO
 M32SKcsXzAlps4X9JNNrjBvc3QyGwWu9Xkg5E=
Original-Received: by 10.224.197.131 with SMTP id ek3mr17788575qab.6.1324634489400;
 Fri, 23 Dec 2011 02:01:29 -0800 (PST)
Original-Received: by 10.229.79.78 with HTTP; Fri, 23 Dec 2011 02:01:08 -0800 (PST)
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
Xref: news.gmane.org gmane.linux.arch.general:38371
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38371>

2011/12/23 Ralf Madorf <ralf.mardorf@alice-dsl.net>:
> On Fri, 2011-12-23 at 13:02 +0330, ali.mousavi@gmail.com wrote:
>> you can't use gnome 3 without pulse audio. if you don't want to use pulse
>> audio, consider using another DE or WM.
>
> At the moment I'm using Xfce only, but I will have the libre to use
> GNOME3 too, since it works without PA. It did work without PA for my
> Debian.

s/libre/freedom

So stick with debian.

>
> As mentioned before, at the moment only GDM is installed.
>

Which is the dm of gnome.

> Btw. for what tasks PA is needed? I don't know any task that's relevant
> for a DAW. But having the libre to use every DE for a DAW should be
> possible.

libre is french term for freedom. As it is said before : stick with
debian, and stop spamming this list, for god sake !
>
> - Ralf
>



-- 
Frederic Bezies
fredbezies@gmail.com

