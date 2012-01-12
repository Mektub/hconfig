Path: news.gmane.org!not-for-mail
From: Allan McRae <allan-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Newsgroups: gmane.linux.arch.pacman.devel
Subject: [PATCH] Prevent rebuild of man pages when using
	release tarballs
Date: Sat, 24 Dec 2011 20:27:11 +1000
Lines: 48
Approved: news@gmane.org
Message-ID: <1324722431-14719-1-git-send-email-allan@archlinux.org>
Reply-To: Discussion list for pacman development <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324721856 4230 80.91.229.12 (24 Dec 2011 10:17:36 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 10:17:36 +0000 (UTC)
To: pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Sat Dec 24 11:17:32 2011
Return-path: <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glapd-pacman-dev@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1ReOfT-00033l-Ju
	for glapd-pacman-dev@m.gmane.org; Sat, 24 Dec 2011 11:17:31 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 6782690187;
	Sat, 24 Dec 2011 05:17:28 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id E0C9686164
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sat, 24 Dec 2011 05:17:26 -0500 (EST)
Original-Received: from localhost (122-148-115-77.static.dsl.dodo.com.au
 [122.148.115.77])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 15A8390185
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Sat, 24 Dec 2011 05:17:25 -0500 (EST)
X-Mailer: git-send-email 1.7.8.1
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
Xref: news.gmane.org gmane.linux.arch.pacman.devel:8740
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.pacman.devel/8740>

Commit 43cad9c8 made the building of all docs depend on the Makefile.
However, the Makefile is generated after running ./configure so is
always newer than any pregenerated docs.  This means that people
building from released pacman tarballs are forced to rebuild the
docs (and thus have asciidoc installed).  That defeats the purpose
of prebuilding the documentation.  Have the documentatin depends on
Makefile.am instead as this is probably what was intended.

Signed-off-by: Allan McRae <allan-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
---

Two things:
1) That was a massive commit message for the addition of 9 characters!
2) Somebody did not build the Arch Linux pacman package in a clean chroot
   or else failures due to missing asciidoc would have occurred...

 doc/Makefile.am |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/doc/Makefile.am b/doc/Makefile.am
index 2c6cc50..a2018c7 100644
--- a/doc/Makefile.am
+++ b/doc/Makefile.am
@@ -120,7 +120,7 @@ A2X_OPTS = \
 	--destination-dir='./'
 
 # These rules are due to the includes and files of the asciidoc text
-$(ASCIIDOC_MANS): asciidoc.conf footer.txt Makefile
+$(ASCIIDOC_MANS): asciidoc.conf footer.txt Makefile.am
 	$(AM_V_GEN)a2x $(A2X_OPTS) --asciidoc-opts="$(ASCIIDOC_OPTS) --out-file=./$@.xml" $(srcdir)/$@.txt
 
 %.html: %.txt
@@ -132,8 +132,8 @@ HACKING.html: ../HACKING
 		sed -e 's/\r$$//' > $@
 
 # Customizations for certain HTML docs
-$(HTML_MANPAGES): asciidoc.conf footer.txt Makefile
-$(HTML_OTHER): asciidoc.conf Makefile
+$(HTML_MANPAGES): asciidoc.conf footer.txt Makefile.am
+$(HTML_OTHER): asciidoc.conf Makefile.am
 %.html: ASCIIDOC_OPTS += -a linkcss -a toc -a icons -a max-width=960px -a stylesheet=asciidoc-override.css
 %.8.html: ASCIIDOC_OPTS += -d manpage
 %.5.html: ASCIIDOC_OPTS += -d manpage
-- 
1.7.8.1



