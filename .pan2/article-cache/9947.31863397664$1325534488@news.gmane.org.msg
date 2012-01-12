Path: news.gmane.org!not-for-mail
From: "Arch Linux: Recent news updates: Tom Gundersen" <announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Newsgroups: gmane.linux.arch.announce
Subject: Users of unofficial kernels must enable devtmpfs
	support
Date: Mon, 02 Jan 2012 20:01:11 -0000
Lines: 16
Approved: news@gmane.org
Message-ID: <9947.31863397664$1325534488@news.gmane.org>
Reply-To: Arch Linux Announcements <arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1325534488 13154 80.91.229.12 (2 Jan 2012 20:01:28 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Mon, 2 Jan 2012 20:01:28 +0000 (UTC)
To: arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Mon Jan 02 21:01:23 2012
Return-path: <arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glaa-arch-announce@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-announce-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1Rho4Q-00011o-R6
	for glaa-arch-announce@m.gmane.org; Mon, 02 Jan 2012 21:01:22 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 9753F900ED;
	Mon,  2 Jan 2012 15:01:13 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 423CB86180
 for <arch-announce-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Mon,  2 Jan 2012 15:01:11 -0500 (EST)
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
Xref: news.gmane.org gmane.linux.arch.announce:258
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.announce/258>

Tom Gundersen wrote:

As of udev-176, the Arch Linux userspace tools will no longer be able to boot
kernels without devtmpfs support.

The official Arch kernels (`kernel26-lts` and `linux`) have both had devtmpfs
support for a long time, so only people who compile their own kernels are
potentially affected by this change.

More information about the kernel options required by udev is available in the
udev [README][1].

   [1]: here:
http://git.kernel.org/?p=linux/hotplug/udev.git;a=blob_plain;f=README

URL: http://www.archlinux.org/news/users-of-unofficial-kernels-must-enable-devtmpfs-support/
