Path: news.gmane.org!not-for-mail
From: Steve Holmes <steve.holmes88@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Wed, 28 Dec 2011 21:36:35 -0800
Lines: 26
Approved: news@gmane.org
Message-ID: <20111229053635.GA2806@linlap.wavecable.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <1324637340.10606.124.camel@localhost.localdomain>
 <CAMw+j7Lt_scVbwj7BfW6uQVfM6=a5R01vaGsLsvyGhZ0SiH1nA@mail.gmail.com>
 <10860676.TolBvm7Dii@leto>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Trace: dough.gmane.org 1325137012 19491 80.91.229.12 (29 Dec 2011 05:36:52 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 29 Dec 2011 05:36:52 +0000 (UTC)
To: arch-general@archlinux.org
Original-X-From: arch-general-bounces@archlinux.org Thu Dec 29 06:36:48 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Rg8fX-0006Py-85
	for glag-arch@m.gmane.org; Thu, 29 Dec 2011 06:36:47 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 2873F9010A;
	Thu, 29 Dec 2011 00:36:40 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id A527386179
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 00:36:38 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.213.44 is authorized
 to use 'steve.holmes88@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="steve.holmes88@gmail.com";
 helo=mail-yw0-f44.google.com; client-ip=209.85.213.44
Original-Received: from mail-yw0-f44.google.com (mail-yw0-f44.google.com
 [209.85.213.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 871F590109
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 00:36:37 -0500 (EST)
Original-Received: by yhjj72 with SMTP id j72so7478176yhj.3
 for <arch-general@archlinux.org>; Wed, 28 Dec 2011 21:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=date:from:to:subject:message-id:references:mime-version
 :content-type:content-disposition:in-reply-to:user-agent;
 bh=ubTlsFuFdnaG18KURehEKdJjaNDDz7bJyq8DY4tGE4E=;
 b=G8Noegy0IXlkDab+1i24+/MUy2yVWpJeCVh2DZkAkvVQDk3iqdMQB00a9cfZoQW+RK
 +v0FdFxRpGtOJPOjl6mTCeauCJDcNerBt86c/ieLdQ2szDgZADXflklVjKdyhpjJW20b
 +QkUHsMtHMNUd2CfcZ5e5VGC6zJpnmqV382EQ=
Original-Received: by 10.236.146.4 with SMTP id q4mr45308303yhj.105.1325137000614;
 Wed, 28 Dec 2011 21:36:40 -0800 (PST)
Original-Received: from linlap.wavecable.com (76-14-154-236.rk.wavecable.com.
 [76.14.154.236])
 by mx.google.com with ESMTPS id m38sm81424503anq.16.2011.12.28.21.36.38
 (version=TLSv1/SSLv3 cipher=OTHER);
 Wed, 28 Dec 2011 21:36:38 -0800 (PST)
Content-Disposition: inline
In-Reply-To: <10860676.TolBvm7Dii@leto>
User-Agent: Mutt/1.5.21 (2010-09-15)
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
Xref: news.gmane.org gmane.linux.arch.general:38462
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38462>

On Fri, Dec 23, 2011 at 11:18:33AM +0000, Paul Gideon Dann wrote:
> Seriously?  It's comments like this that make me wonder if subscribing to this 
> list is really worth it.  At least you did go on to provide some useful 
> information, albeit in a "if I MUST stoop down to your level" kind of tone.
> 
> > My suggestion is: (a) stop whining; or (b) learn how to code and cut
> > out all sound stuff out of gnome-settings-daemon.  No matter what you
> > choose, there is one more option, which is much better: GET OUTTA HERE
> > and use Debian if you like it so much.  Not right?  Then buy a Mac.
> > Or Windows if you want to.  PERIOD.
> 
> Wow.  I'm truly mortified that the Linux world is associated with behaviour 
> like yours.  What gives you the right to talk like that to *anyone*, let alone 
> someone who came to us for help?
> 
> Paul

+1

I've sure seen my share of rude and discurtius answers tonight.  I
understand if the discussion drags on and yes, Ralph was given some
constructive answers about gnome and its dependencies.  And yes, Ralph
needs to except the reasoning about upstream designs outside of Arch's
control.  but still, the put-downs are quite unnecessary as far as I'm
concerned.

