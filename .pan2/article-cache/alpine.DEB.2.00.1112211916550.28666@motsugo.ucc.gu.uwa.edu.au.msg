Path: news.gmane.org!not-for-mail
From: David Adam <zanchey-phYVu8ttvDqKhr/Vn+yakYdd74u8MsAO@public.gmane.org>
Newsgroups: gmane.comp.sysutils.backup.tarsnap.user
Subject: Re: [patch] nodump breakage on linux
Date: Wed, 21 Dec 2011 19:17:21 +0800 (WST)
Lines: 15
Approved: news@gmane.org
Message-ID: <alpine.DEB.2.00.1112211916550.28666@motsugo.ucc.gu.uwa.edu.au>
References: <4ED67849.7050006@tarsnap.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Trace: dough.gmane.org 1324466265 20277 80.91.229.12 (21 Dec 2011 11:17:45 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Wed, 21 Dec 2011 11:17:45 +0000 (UTC)
Cc: tarsnap users <tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
To: Colin Percival <cperciva-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Original-X-From: tarsnap-users-return-478-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org Wed Dec 21 12:17:41 2011
Return-path: <tarsnap-users-return-478-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Envelope-to: gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org
Original-Received: from mx2.tarsnap.com ([208.79.82.75])
	by lo.gmane.org with smtp (Exim 4.69)
	(envelope-from <tarsnap-users-return-478-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>)
	id 1RdKB1-0003yx-Ra
	for gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org; Wed, 21 Dec 2011 12:17:40 +0100
Original-Received: (qmail 74420 invoked from network); 21 Dec 2011 11:17:28 -0000
Original-Received: from unknown (HELO mx1.tarsnap.com) (192.168.0.25)
  by mx2.tarsnap.com with SMTP; 21 Dec 2011 11:17:28 -0000
Original-Received: (qmail 74221 invoked by uid 1025); 21 Dec 2011 11:17:24 -0000
Mailing-List: contact tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Help: <mailto:tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <mailto:tarsnap-users-unsubscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Subscribe: <mailto:tarsnap-users-subscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Delivered-To: mailing list tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Original-Received: (qmail 74208 invoked from network); 21 Dec 2011 11:17:23 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ApwEAJK/8U6CX4DX/2dsb2JhbABDrR6BcgEBBTo/EAsOCi4sKwYTtk2JBYwPBIg1nwk
X-IronPort-AV: E=Sophos;i="4.71,387,1320595200"; 
   d="scan'208";a="179945276"
In-Reply-To: <4ED67849.7050006-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
User-Agent: Alpine 2.00 (DEB 1167 2008-08-23)
Xref: news.gmane.org gmane.comp.sysutils.backup.tarsnap.user:458
Archived-At: <http://permalink.gmane.org/gmane.comp.sysutils.backup.tarsnap.user/458>

On Wed, 30 Nov 2011, Colin Percival wrote:
> I spent many hours scratching my head trying to figure out what the tarsnap
> code was doing wrong to not handle nodump properly, and then Ralph Smith sent
> me an email pointing out that tarsnap was checking for the nodump flag on the
> wrong file. :-/
> 
> I've attached a patch which works in my tests; assuming nobody replies to say
> that it isn't working for them, I'll be including this in the next tarsnap
> release.

Works for me - thanks!

David Adam
zanchey-phYVu8ttvDqKhr/Vn+yakYdd74u8MsAO@public.gmane.org

