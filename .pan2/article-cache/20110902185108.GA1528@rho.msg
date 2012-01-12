Path: news.gmane.org!not-for-mail
From: Ethan Schoonover <es-ZAylmKaWhX4IbM8pAAyNbEEOCMrvLtNR@public.gmane.org>
Newsgroups: gmane.linux.arch.releng
Subject: figtree - AIF module for version controlled config
	trees
Date: Fri, 2 Sep 2011 11:51:08 -0700
Lines: 109
Approved: news@gmane.org
Message-ID: <20110902185108.GA1528@rho>
Reply-To: Arch Linux Release Engineering <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Trace: dough.gmane.org 1314989430 17028 80.91.229.12 (2 Sep 2011 18:50:30 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 2 Sep 2011 18:50:30 +0000 (UTC)
To: arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Fri Sep 02 20:50:26 2011
Return-path: <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glar-arch-releng@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132] helo=archlinux.org)
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-releng-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1QzYos-0005qA-6I
	for glar-arch-releng@m.gmane.org; Fri, 02 Sep 2011 20:50:26 +0200
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by archlinux.org (Postfix) with ESMTP id B3C889201A;
	Fri,  2 Sep 2011 14:50:19 -0400 (EDT)
Original-Received: from archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id E3A35BE001
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri,  2 Sep 2011 14:50:17 -0400 (EDT)
Received-SPF: pass (ethanschoonover.com: Sender is authorized to use
 'es-ZAylmKaWhX4IbM8pAAyNbEEOCMrvLtNR@public.gmane.org' in 'mfrom' identity (mechanism
 'include:_spf.google.com' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="es-ZAylmKaWhX4IbM8pAAyNbEEOCMrvLtNR@public.gmane.org";
 helo=mail-gy0-f172.google.com; client-ip=209.85.160.172
Original-Received: from mail-gy0-f172.google.com (mail-gy0-f172.google.com
 [209.85.160.172])
 by archlinux.org (Postfix) with ESMTPS id A708C92019
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri,  2 Sep 2011 14:50:17 -0400 (EDT)
Original-Received: by gyf3 with SMTP id 3so2002464gyf.3
 for <arch-releng-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Fri, 02 Sep 2011 11:50:22 -0700 (PDT)
Original-Received: by 10.68.29.101 with SMTP id j5mr2271412pbh.18.1314989419731;
 Fri, 02 Sep 2011 11:50:19 -0700 (PDT)
Original-Received: from localhost (c-24-22-181-226.hsd1.wa.comcast.net. [24.22.181.226])
 by mx.google.com with ESMTPS id x6sm55706pba.5.2011.09.02.11.50.17
 (version=TLSv1/SSLv3 cipher=OTHER);
 Fri, 02 Sep 2011 11:50:18 -0700 (PDT)
Content-Disposition: inline
X-Face: D_~SVWu?*&(=5_\!=ho8z_vevswdsc5*vUZ[P%>Ez4\UgnG~j?BZFz.RO{[jHoj\_[
 U/sY9ZC*Y>L(dq[Phd:eU=1a{d>9Ycs+@B='f%Lve,{2Y|U~Nbpsi+B\g99VXu'CTT
 9N>IA$A"?\h=Ws'R"MpxaY;;u.2}1_4L.E5:rT/Uu*<i"qvRm#:2mn}ez=g-
 8yj#R4vIS0gZWf+a|qbuT$'#uV-6;T%y$HLRU:g*~J7BZ=]ve@tCdr;7{RLT|C
 H(59rJ-Wsr%)0VMY&TA"[>MP"'vv$u7N#rpZ]PJq6c0>dO#57=Wa~/0S],=3<2!
 n!l&Y~g.BF':qa|OVQ}sVjo"q]n.Y
User-Agent: Mutt/1.5.21+66,mq+20 (f6a783f62a02) (2011-07-01)
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
Xref: news.gmane.org gmane.linux.arch.releng:735
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.releng/735>

I've been working on an AIF module for a while and yesterday posted a brief 
note on the forum and exchanged a mail or two with Dieter about it. I'd welcome 
feedback on it from the releng team and would like to cover an issue I'm 
having during install from the ISO that appears to be either filesystem or 
makepkg related. Archiso team feedback would be great, in particular since this
only occurs when run from ISO (which doesn't mean it's related to archiso, but
archiso team members might at least be able to tell me why it isn't if that's
the case).

I'll pop into #archlinux-releng as well later (nick altercation).

On github
---------

https://github.com/altercation/figtree

Features
--------

  * Keep your system config in version control. Access locally or remotely
    (github currently supported, framework in place for other dvcs/hosts)

  * Separate hardware specific packages, configuration files,
    and values from other profile scope. (implemented already)

  * Add overlay files and expanded configuration values to AIF installation.
    (implemented already). The systems/lenovo/x220/profile in github is an
    example of a hardware specific profile that makes good use of overlays.

  * Access the profile at install time from the Arch ISO via AIF
    (figtree automatic procedure; already implemented)

  * Easily update the profile from a live system; easily update
    a live system from the profile. (partial procedures; work in progress)

The readme on the github page should be fairly comprehensive. I haven't 
implemented user config/home directory functions but it's one of the next 
big features to work on (I've already implemented it in an older script; 
much of this is rewriting / refactoring of those older, non AIF functions).


Feedback on architecture
------------------------

I hope this isn't off topic for releng and welcome feedback about the general 
approach I've taken. I hope that figtree might become useful for others, 
particular in regards to sharing hardware specific install starter configs. 
I was hoping that system profiles might serve as an adjunct to the arch wiki 
in terms of sharing config file samples, for instance.

The implementation as it stands, while not trivial, is up for revision. For 
instance, the functions I am using in the profiles (packages/daemons/config) 
are, I think, easy to understand and not needlessly abstracted or complex. It's
possible to do away with them entirely and just have the user add values to a
variable instead (CONFIG_CHANGES+=("more changes")) but I felt that this was 
more error prone and potentially harder to scan. 

Ultimately, I wanted to keep it simple and stick to DRY / DROP (don't repeat
other people) principles. Dieter's AIF architecture really works for this and
I hope that figtree might evolve into something useful that allows dvcs based
sharing. I'd like to actively solicit feedback on this here.


Install Issue (archiso team feedback requested)
-----------------------------------------------

(maybe split this mail thread if this is best handled separately)

I'd very much like to support AUR packages in this module as, particularly 
for specific hardware, I rely on AUR to get the system functioning 100%. 
I have the code in place to do this and many AUR packages work well during 
install from a plain Arch ISO and a custom profile.

In some cases, during the installation of a aur-test profile, I am 
encountering hundreds of the following errors once I hit the makepkg on 
weechat-git in my aur-test profile (as sourced below). It happens during git 
cloning in makepkg, so I thought it might be cache related?

    Buffer I/O errors

sprinkled with an occasional

    EXT4-fs This should not happen!!

I can reproduce this in a virtual machine using the following commands 
after booting into a plain Arch ISO 2011.08.19 (the following should
work for any of you as well; I'd welcome other testers of this):

    # aif -p partial-configure-network
    # aif -p http://github.com/altercation/figtree/raw/master/procedures/automatic \\
          -c profiles/aur-test -a

(the latter is of course all one command, -a is the flag to activate AUR 
package install for my module)

I thought it might be related to running out of disk space because I was 
using the runtime /tmp directory and it wasn't mounted where I thought, but 
I've tested with running makepkg in /mnt/tmp as well with the same problem.


Best regards,
Ethan

-- 
Ethan Schoonover
es-ZAylmKaWhX4IbM8pAAyNbEEOCMrvLtNR@public.gmane.org
--
Precision Colors - Solarized - http://ethanschoonover.com/solarized

