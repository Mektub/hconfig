Path: news.gmane.org!not-for-mail
From: Allan McRae <allan@archlinux.org>
Newsgroups: gmane.linux.arch.general
Subject: Re: python-urwid and python2-urwid contain .pyo
 files, didn't used to.
Date: Fri, 23 Dec 2011 20:45:20 +1000
Lines: 17
Approved: news@gmane.org
Message-ID: <4EF45BC0.2050101@archlinux.org>
References: <3557214.v6OY2uTISs@whiskers>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324636539 1017 80.91.229.12 (23 Dec 2011 10:35:39 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 10:35:39 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Fri Dec 23 11:35:36 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1Re2TP-0002oC-9y
	for glag-arch@m.gmane.org; Fri, 23 Dec 2011 11:35:35 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id C95E390107;
	Fri, 23 Dec 2011 05:35:30 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id ADB5286163
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:35:29 -0500 (EST)
Original-Received: from [10.1.1.4] (122-148-115-77.static.dsl.dodo.com.au
 [122.148.115.77])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 29270900F1
 for <arch-general@archlinux.org>; Fri, 23 Dec 2011 05:35:28 -0500 (EST)
User-Agent: Mozilla/5.0 (X11; Linux i686;
 rv:9.0) Gecko/20111221 Thunderbird/9.0
In-Reply-To: <3557214.v6OY2uTISs@whiskers>
X-Enigmail-Version: 1.3.4
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
Xref: news.gmane.org gmane.linux.arch.general:38385
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38385>

On 23/12/11 20:32, Peter Lewis wrote:
> Hi,
> 
> python-urwid and python2-urwid now seem to contain .pyo files, but they didn't 
> before. Just thought I'd check that this was intentional.
> 
> Caveat: I know nothing about python packaging, but pacman just gave me a bunch 
> of file conflicts for .pyo files not previously owned by anything.
> 


Probably intentional to include them now.  You can safely remove the
conflicting files.

Allan


