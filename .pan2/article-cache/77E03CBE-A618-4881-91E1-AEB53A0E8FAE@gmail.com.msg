Path: news.gmane.org!not-for-mail
From: Mr. Meitar Moscovitz <meitarm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Newsgroups: gmane.comp.sysutils.backup.tarsnap.user
Subject: Excluding directories with names that have at-signs works from CLI but not .tarsnaprc?
Date: Sun, 1 Jan 2012 15:04:02 -0800
Lines: 52
Approved: news@gmane.org
Message-ID: <77E03CBE-A618-4881-91E1-AEB53A0E8FAE@gmail.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0 (Apple Message framework v1084)
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
X-Trace: dough.gmane.org 1325459060 32158 80.91.229.12 (1 Jan 2012 23:04:20 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sun, 1 Jan 2012 23:04:20 +0000 (UTC)
To: tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Original-X-From: tarsnap-users-return-487-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org Mon Jan 02 00:04:14 2012
Return-path: <tarsnap-users-return-487-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Envelope-to: gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org
Original-Received: from mx2.tarsnap.com ([208.79.82.75])
	by lo.gmane.org with smtp (Exim 4.69)
	(envelope-from <tarsnap-users-return-487-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>)
	id 1RhURp-0002uU-Ln
	for gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org; Mon, 02 Jan 2012 00:04:13 +0100
Original-Received: (qmail 34183 invoked from network); 1 Jan 2012 23:04:08 -0000
Original-Received: from unknown (HELO mx1.tarsnap.com) (192.168.0.25)
  by mx2.tarsnap.com with SMTP; 1 Jan 2012 23:04:08 -0000
Original-Received: (qmail 33977 invoked by uid 1025); 1 Jan 2012 23:04:06 -0000
Mailing-List: contact tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Help: <mailto:tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <mailto:tarsnap-users-unsubscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Subscribe: <mailto:tarsnap-users-subscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Delivered-To: mailing list tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Original-Received: (qmail 33970 invoked from network); 1 Jan 2012 23:04:06 -0000
X-Mailer: Apple Mail (2.1084)
Xref: news.gmane.org gmane.comp.sysutils.backup.tarsnap.user:467
Archived-At: <http://permalink.gmane.org/gmane.comp.sysutils.backup.tarsnap.user/467>

Hi there,

I've just begun trying out tarsnap and while much of it seems awesomely =
simple, I'm seeing some behavior that is hopefully just my own =
unfamiliarity with the tool rather than a bug, but it's confusing me =
nonetheless.

I have some large directories that I'd like to exclude from my tarsnap =
backup archive. When I try to exclude them using the `exclude` directive =
in my .tarsnaprc file, they are not excluded, but when I try to exclude =
them from the command line, they are excluded. Why might this be =
happening? My first guess was that all the problem directories had =
at-signs (@) in their names, but apparently this shouldn't make a =
difference, right?[0]

For what it's worth, I'm using Mac OS X and trying to avoid backing up =
email that is already stored elsewhere.

Here's a shortened snippet of my .tarsnaprc file:

> # Exclude files and directories matching specified patterns
> exclude *.DS_Store
> exclude .Trash/
> [=85]
> exclude Library/Mail/*gmail.com*
> exclude Library/Mail/IMAP-meitarm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org@imap.gmail.com

While tarsnap obeys the first two exclude directives shown, the last two =
are not, and the files in my local GMail cache are added to the backup, =
which is not what I want in this case. However, when I use the same =
exclusions on the command line, then the directory is rightfully =
excluded.

> tarsnap -cv -f test-backup --exclude 'Library/Mail/*gmail.com*' ./  # =
This works.


I've tried a bunch of different shell globbing and syntax workarounds =
for the .tarsnaprc file but none of them work. I need some help figuring =
out why this is happening, or what I'm doing wrong.

Thanks in advance for your help. :)

Cheers,
-Meitar Moscovitz
Personal: http://maymay.net
Professional: http://MeitarMoscovitz.com

EXTERNAL REFERENCES:

[0] https://twitter.com/cperciva/status/153608909683310592=

