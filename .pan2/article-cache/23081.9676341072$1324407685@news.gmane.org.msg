Path: news.gmane.org!not-for-mail
From: "Arch Linux: Recent news updates: Tom Gundersen" <announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Newsgroups: gmane.linux.arch.announce
Subject: filesystem upgrade - manual intervention required
Date: Tue, 20 Dec 2011 19:01:11 -0000
Lines: 19
Approved: news@gmane.org
Message-ID: <23081.9676341072$1324407685@news.gmane.org>
Reply-To: Arch Linux Announcements <arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324407686 21694 80.91.229.12 (20 Dec 2011 19:01:26 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Tue, 20 Dec 2011 19:01:26 +0000 (UTC)
To: arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Tue Dec 20 20:01:20 2011
Return-path: <arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glaa-arch-announce@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1Rd4wC-0003YO-2i
	for glaa-arch-announce@m.gmane.org; Tue, 20 Dec 2011 20:01:20 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id ADFE990061;
	Tue, 20 Dec 2011 14:01:13 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 6DBD98615F
 for <arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Tue, 20 Dec 2011 14:01:11 -0500 (EST)
User-Agent: rss2email
X-BeenThere: arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Arch Linux Announcements <arch-announce.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-announce>, 
 <mailto:arch-announce-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-announce>
List-Post: <mailto:arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:arch-announce-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-announce>, 
 <mailto:arch-announce-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.announce:257
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.announce/257>

Tom Gundersen wrote:

When upgrading to `filesystem-2011.12` there will be a conflict with
`/etc/mtab`.

Install the package as follows:

`pacman -S filesystem --force`

It is strongly advised to avoid the `--force` or `-f` switch as it is not safe.
However, in this particular case it is needed as deleting `/etc/mtab` manually
would break pacman.

The reason for the conflict is that the file used to be generated at boot and
hence not owned by any package. Now it is a symlink to `/proc/self/mounts` owned
by `filesystem`. This change means that `initscripts` no longer requires write
access to the rootfs (though other packages might).

URL: http://www.archlinux.org/news/filesystem-upgrade-manual-intervention-required/
