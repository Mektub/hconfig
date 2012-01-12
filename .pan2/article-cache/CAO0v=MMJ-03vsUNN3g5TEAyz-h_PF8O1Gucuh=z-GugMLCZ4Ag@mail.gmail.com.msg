Path: news.gmane.org!not-for-mail
From: Karol Blazewicz <karol.blazewicz@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Question about visudo and info in the Wiki
Date: Fri, 30 Dec 2011 22:49:50 +0100
Lines: 16
Approved: news@gmane.org
Message-ID: <CAO0v=MMJ-03vsUNN3g5TEAyz-h_PF8O1Gucuh=z-GugMLCZ4Ag@mail.gmail.com>
References: <4EFE26E0.50604@gmail.com>
 <CAO0v=MN-yPME0Kv9O_QHzPJ5tJXFrRoiZTuYGwK59pJZW8gLsw@mail.gmail.com>
 <4EFE296A.8010604@gmail.com>
 <CAO0v=MNuvS4PShypm9318N2CjokEy27smfrp0wW1Po7eU3=vDg@mail.gmail.com>
 <4EFE2BD3.1070108@gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1325281807 8671 80.91.229.12 (30 Dec 2011 21:50:07 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 30 Dec 2011 21:50:07 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 30 22:50:01 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RgkKr-0004x7-EG
	for glag-arch@m.gmane.org; Fri, 30 Dec 2011 22:49:57 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 5B7AE90145;
	Fri, 30 Dec 2011 16:49:50 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 5FC5D8617B
 for <arch-general@archlinux.org>; Fri, 30 Dec 2011 16:49:48 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 74.125.82.46 is authorized
 to use 'karol.blazewicz@gmail.com' in 'mfrom' identity (mechanism
 'ip4:74.125.0.0/16' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="karol.blazewicz@gmail.com";
 helo=mail-ww0-f46.google.com; client-ip=74.125.82.46
Original-Received: from mail-ww0-f46.google.com (mail-ww0-f46.google.com [74.125.82.46])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 19C559010D
 for <arch-general@archlinux.org>; Fri, 30 Dec 2011 16:49:47 -0500 (EST)
Original-Received: by wgbdq10 with SMTP id dq10so15982770wgb.27
 for <arch-general@archlinux.org>; Fri, 30 Dec 2011 13:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=jWv34Lte4R+JNsRfo78pr0cVn7YiWCvQn3dFg8O94+Q=;
 b=u71wd+z7MdJfYR2szfRUCUp0AsTcQldZQ91BFI1FSfzOxxnAdw2rMTSqtidb91rO/t
 Eg8h3qSheTer78rxSBCnMReikhrgQVP70xtjIE7rw6aJzU9Y0qoUrbX6iy+LDgZxTSyH
 E+axl/xQ+MIxHWXXPUXY8c1woYNoQ67W4/vr0=
Original-Received: by 10.227.205.85 with SMTP id fp21mr18593693wbb.6.1325281790452;
 Fri, 30 Dec 2011 13:49:50 -0800 (PST)
Original-Received: by 10.223.91.66 with HTTP; Fri, 30 Dec 2011 13:49:50 -0800 (PST)
In-Reply-To: <4EFE2BD3.1070108@gmail.com>
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
Xref: news.gmane.org gmane.linux.arch.general:38489
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38489>

On Fri, Dec 30, 2011 at 10:23 PM, Don Juan <donjuansjiz@gmail.com> wrote:
> But if you are USER root you don't need to run sudo, so hence wouldn't running EDITOR=nano visudo
> not work if you are a root user, since sudo is not involved?

visudo uses the EDITOR / VISUAL vars, see the man page:

ENVIRONMENT
       The following environment variables may be consulted depending on the
       value of the editor and env_editor sudoers variables:
       VISUAL          Invoked by visudo as the editor to use
       EDITOR          Used by visudo if VISUAL is not set

See, these variables are used *by visudo*. As you said, sudo is needed
only for the user, otherwise I get 'visudo: /etc/sudoers: Permission
denied'.

