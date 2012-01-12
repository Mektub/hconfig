Path: news.gmane.org!not-for-mail
From: Michael Sierchio <kudzu-vD6RicW5ZB5Wk0Htik3J/w@public.gmane.org>
Newsgroups: gmane.comp.sysutils.backup.tarsnap.user
Subject: Re: All my archives are corrupt?
Date: Thu, 22 Dec 2011 08:47:57 -0800
Lines: 17
Approved: news@gmane.org
Message-ID: <CAHu1Y704oo=UqCBTMMT5hrvmK3M0gNedW56kRuDubWy+nhebGA@mail.gmail.com>
References: <CAHu1Y71byP9D3rfPL5900OmFw6hSXXiYxEPZDWczGmhgKYuo+w@mail.gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1324572490 9885 80.91.229.12 (22 Dec 2011 16:48:10 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 22 Dec 2011 16:48:10 +0000 (UTC)
To: tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Original-X-From: tarsnap-users-return-482-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org Thu Dec 22 17:48:06 2011
Return-path: <tarsnap-users-return-482-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Envelope-to: gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org
Original-Received: from mx2.tarsnap.com ([208.79.82.75])
	by lo.gmane.org with smtp (Exim 4.69)
	(envelope-from <tarsnap-users-return-482-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>)
	id 1RdloM-0002ft-2j
	for gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org; Thu, 22 Dec 2011 17:48:06 +0100
Original-Received: (qmail 6252 invoked from network); 22 Dec 2011 16:47:59 -0000
Original-Received: from unknown (HELO mx1.tarsnap.com) (192.168.0.25)
  by mx2.tarsnap.com with SMTP; 22 Dec 2011 16:47:59 -0000
Original-Received: (qmail 6032 invoked by uid 1025); 22 Dec 2011 16:47:58 -0000
Mailing-List: contact tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Help: <mailto:tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <mailto:tarsnap-users-unsubscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Subscribe: <mailto:tarsnap-users-subscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Delivered-To: mailing list tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Original-Received: (qmail 6025 invoked from network); 22 Dec 2011 16:47:58 -0000
In-Reply-To: <CAHu1Y71byP9D3rfPL5900OmFw6hSXXiYxEPZDWczGmhgKYuo+w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Xref: news.gmane.org gmane.comp.sysutils.backup.tarsnap.user:462
Archived-At: <http://permalink.gmane.org/gmane.comp.sysutils.backup.tarsnap.user/462>

Apologies - but I suppose the object lesson in checking your work.
Somehow, someone swapped the include and exclude patterns in
/usr/local/etc/tarsnap.conf.  Yes, the backups were all empty. ;-)

- M

On Thu, Dec 22, 2011 at 8:41 AM, Michael Sierchio <kudzu-vD6RicW5ZB5Wk0Htik3J/w@public.gmane.org> wrot=
e:
> smotrite 102# tarsnap -t -f daily.usr.20111221044126
> tarsnap: *.log: Not found in archive
> tarsnap: Error exit delayed from previous errors.
>
> I've tried listing the contents of every archive for this host - same
> result. =A0--fsck returns normal.
>
> - M

