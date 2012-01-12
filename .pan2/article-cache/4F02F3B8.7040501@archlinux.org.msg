Path: news.gmane.org!not-for-mail
From: Allan McRae <allan-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Newsgroups: gmane.linux.arch.devel
Subject: Rebuilding [extra] packages for signing?
Date: Tue, 03 Jan 2012 22:25:28 +1000
Lines: 9
Approved: news@gmane.org
Message-ID: <4F02F3B8.7040501@archlinux.org>
Reply-To: Public mailing list for Arch Linux development
 <arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1325592934 25799 80.91.229.12 (3 Jan 2012 12:15:34 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Tue, 3 Jan 2012 12:15:34 +0000 (UTC)
To: Public mailing list for Arch Linux development
 <arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Original-X-From: arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Tue Jan 03 13:15:30 2012
Return-path: <arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glad-arch-dev-public@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1Ri3H7-0005xA-My
	for glad-arch-dev-public@m.gmane.org; Tue, 03 Jan 2012 13:15:29 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id D04A7900EE;
	Tue,  3 Jan 2012 07:15:21 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 1277486180
 for <arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Tue,  3 Jan 2012 07:15:20 -0500 (EST)
Original-Received: from [10.1.1.5] (122-148-115-77.static.dsl.dodo.com.au
 [122.148.115.77])
 by gerolde.archlinux.org (Postfix) with ESMTPSA id 6DBD2900E4
 for <arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Tue,  3 Jan 2012 07:15:19 -0500 (EST)
User-Agent: Mozilla/5.0 (X11; Linux i686;
 rv:9.0) Gecko/20111224 Thunderbird/9.0.1
X-Enigmail-Version: 1.3.4
X-BeenThere: arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Public mailing list for Arch Linux development
 <arch-dev-public.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/arch-dev-public>, 
 <mailto:arch-dev-public-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/arch-dev-public>
List-Post: <mailto:arch-dev-public-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:arch-dev-public-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/arch-dev-public>, 
 <mailto:arch-dev-public-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: arch-dev-public-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.devel:16884
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.devel/16884>

Do we want to do a mass rebuild for the packages in [extra] that are not
yet signed?

There are currently 800 packages remaining unsigned.  In December,
around 20 to 30 packages were newly signed, so if we stick at that rate
we will have [extra] fully signed by mid 2014...

Allan

