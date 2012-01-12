Path: news.gmane.org!not-for-mail
From: John Sumsion <john-3DWtP6SPSk1AfugRpC6u6w@public.gmane.org>
Newsgroups: gmane.linux.arch.pacman.devel
Subject: [PATCH 1/3] makepkg: Allowing for git & hg ref
	override.
Date: Wed, 7 Dec 2011 17:28:19 -0700
Lines: 37
Approved: news@gmane.org
Message-ID: <CAHPGDFP1L34_3hANJm37oUi5wrAE2jdzrW7oJQRjhdXJnJAKqw@mail.gmail.com>
Reply-To: Discussion list for pacman development <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1323304128 28220 80.91.229.12 (8 Dec 2011 00:28:48 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 8 Dec 2011 00:28:48 +0000 (UTC)
To: pacman-dev <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Original-X-From: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Thu Dec 08 01:28:44 2011
Return-path: <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glapd-pacman-dev@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1RYRqt-0005bq-IF
	for glapd-pacman-dev@m.gmane.org; Thu, 08 Dec 2011 01:28:43 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id C9FA89004E;
	Wed,  7 Dec 2011 19:28:09 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 95402860E6
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Wed,  7 Dec 2011 19:28:07 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.210.172 is
 authorized to use 'jdsumsion-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="jdsumsion-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org";
 helo=mail-iy0-f172.google.com; client-ip=209.85.210.172
Original-Received: from mail-iy0-f172.google.com (mail-iy0-f172.google.com
 [209.85.210.172])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 631EE9004C
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Wed,  7 Dec 2011 19:28:07 -0500 (EST)
Original-Received: by iaek3 with SMTP id k3so1700225iae.3
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Wed, 07 Dec 2011 16:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:sender:from:date:x-google-sender-auth:message-id
 :subject:to:content-type;
 bh=wn/iU/9PbPTXQrXeoCVuVL/fIOrxCNZM+C0DNT/5nwo=;
 b=CK3CmFOjWGw5m6IT/bdetxi5H0bszfkA3yJhLtc6ORC17Wdc5UslhA/P0NavcK+2q5
 SAeZ+UnCop8vHZiuCYLPYxTfENeqAMwhfc2sUlJwu7FGnA/bCQI/iYUr1SL4XHzFdce1
 W0pPKGz9bUB7cVJnLazDb6u4WTF28tLDYk8GY=
Original-Received: by 10.50.203.100 with SMTP id kp4mr1523990igc.7.1323304119353; Wed,
 07 Dec 2011 16:28:39 -0800 (PST)
Original-Received: by 10.231.158.139 with HTTP; Wed, 7 Dec 2011 16:28:19 -0800 (PST)
X-Google-Sender-Auth: u3gHRQaat71jfvfzitYLzH0G4bo
X-BeenThere: pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Discussion list for pacman development <pacman-dev.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/pacman-dev>,
 <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/pacman-dev>
List-Post: <mailto:pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/pacman-dev>,
 <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.pacman.devel:8675
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.pacman.devel/8675>

From 56d2a4c494c491f938eeb9b1173a1dad3950058b Mon Sep 17 00:00:00 2001
From: John Sumsion <john-3DWtP6SPSk1AfugRpC6u6w@public.gmane.org>
Date: Sat, 3 Dec 2011 09:36:36 -0700
Subject: [PATCH 1/3] makepkg: Allowing for git & hg ref override.

Signed-off-by: John Sumsion <john-3DWtP6SPSk1AfugRpC6u6w@public.gmane.org>
---
 scripts/makepkg.sh.in |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/makepkg.sh.in b/scripts/makepkg.sh.in
index 0fa05dc..2a92f99 100644
--- a/scripts/makepkg.sh.in
+++ b/scripts/makepkg.sh.in
@@ -1701,7 +1701,7 @@ devel_check() {
 				return 0
 			fi
 			msg "$(gettext "Determining latest %s revision...")" 'git'
-			newpkgver=$(date +%Y%m%d)
+			newpkgver=${_gitref:-$(date +%Y%m%d)}
 		elif [[ -n ${_svntrunk} && -n ${_svnmod} ]] ; then
 			if ! type -p svn >/dev/null; then
 				warning "$(gettext "Cannot find the %s binary required to
determine latest %s revision.")" "svn" "svn"
@@ -1731,7 +1731,7 @@ devel_check() {
 				hg clone $_hgroot/$_hgrepo ./src/$_hgrepo
 				cd ./src/$_hgrepo
 			fi
-			newpkgver=$(hg tip --template "{rev}")
+			newpkgver=${_hgref:-$(hg tip --template "{rev}")}
 			cd ../../
 		fi

-- 
1.7.8


