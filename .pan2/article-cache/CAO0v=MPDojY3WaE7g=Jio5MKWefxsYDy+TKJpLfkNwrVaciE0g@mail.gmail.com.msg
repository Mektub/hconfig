Path: news.gmane.org!not-for-mail
From: Karol Blazewicz <karol.blazewicz@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: [Solved] Question about visudo and info in the
	Wiki
Date: Fri, 30 Dec 2011 22:58:19 +0100
Lines: 7
Approved: news@gmane.org
Message-ID: <CAO0v=MPDojY3WaE7g=Jio5MKWefxsYDy+TKJpLfkNwrVaciE0g@mail.gmail.com>
References: <4EFE26E0.50604@gmail.com>
 <CAO0v=MN-yPME0Kv9O_QHzPJ5tJXFrRoiZTuYGwK59pJZW8gLsw@mail.gmail.com>
 <4EFE296A.8010604@gmail.com>
 <CAO0v=MNuvS4PShypm9318N2CjokEy27smfrp0wW1Po7eU3=vDg@mail.gmail.com>
 <4EFE2BD3.1070108@gmail.com>
 <CAO0v=MMJ-03vsUNN3g5TEAyz-h_PF8O1Gucuh=z-GugMLCZ4Ag@mail.gmail.com>
 <4EFE334A.5000707@gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Trace: dough.gmane.org 1325282310 11437 80.91.229.12 (30 Dec 2011 21:58:30 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 30 Dec 2011 21:58:30 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 30 22:58:26 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RgkT4-0003pj-BN
	for glag-arch@m.gmane.org; Fri, 30 Dec 2011 22:58:26 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 0FD9490178;
	Fri, 30 Dec 2011 16:58:19 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 3D1A88617B
 for <arch-general@archlinux.org>; Fri, 30 Dec 2011 16:58:17 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 74.125.82.172 is authorized
 to use 'karol.blazewicz@gmail.com' in 'mfrom' identity (mechanism
 'ip4:74.125.0.0/16' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="karol.blazewicz@gmail.com";
 helo=mail-we0-f172.google.com; client-ip=74.125.82.172
Original-Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
 [74.125.82.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 00CC09010D
 for <arch-general@archlinux.org>; Fri, 30 Dec 2011 16:58:16 -0500 (EST)
Original-Received: by werb14 with SMTP id b14so7174883wer.3
 for <arch-general@archlinux.org>; Fri, 30 Dec 2011 13:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=TUsKCC6BIH6vppFu+8XWkiv5Bi8+qF12Ky69nsYaqoY=;
 b=WBBVSvXbOLZgfJ6DJKvg3eegk3Era1FGMZYDAzRnBc1ncZpANIYxevIYTXrUQ0Kn3F
 A/6daKkvgPCUItrd0R/8VSFBqHJjNsxYpudOHq3ZL0eCWUOPwDM1ECzk2JuMsPFaBxqR
 IjgqCPZ1a3dHtqPK6VZr+8Div5DQFbFcK6ii8=
Original-Received: by 10.216.136.17 with SMTP id v17mr1373354wei.13.1325282299543; Fri,
 30 Dec 2011 13:58:19 -0800 (PST)
Original-Received: by 10.223.91.66 with HTTP; Fri, 30 Dec 2011 13:58:19 -0800 (PST)
In-Reply-To: <4EFE334A.5000707@gmail.com>
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
Xref: news.gmane.org gmane.linux.arch.general:38491
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38491>

On Fri, Dec 30, 2011 at 10:55 PM, Don Juan <donjuansjiz@gmail.com> wrote:
> Thanks I get it now. Sorry for the noise, appreciate your time and effort.
> :)

No problem, glad I could help.
Your question does not qualify as noise :-)

