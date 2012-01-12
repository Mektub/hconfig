Path: news.gmane.org!not-for-mail
From: Greg Larkin <glarkin-4nlIFiKd+71dpuOT5p4XHl6hYfS7NtTn@public.gmane.org>
Newsgroups: gmane.comp.sysutils.backup.tarsnap.user
Subject: Re: Database backup and deduplication question
Date: Thu, 29 Dec 2011 16:21:37 -0500
Lines: 55
Approved: news@gmane.org
Message-ID: <4EFCD9E1.2000206@sourcehosting.net>
References: <4EEFC1E6.5020606@sourcehosting.net> <4EF01785.4030205@tarsnap.com> <4EF0D7C8.6050107@sourcehosting.net> <4EF1C4C5.1070500@tarsnap.com> <4EF20A09.7070504@sourcehosting.net> <4EF559C2.8060609@tarsnap.com>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1325193713 17591 80.91.229.12 (29 Dec 2011 21:21:53 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 29 Dec 2011 21:21:53 +0000 (UTC)
Cc: tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
To: Colin Percival <cperciva-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Original-X-From: tarsnap-users-return-485-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org Thu Dec 29 22:21:49 2011
Return-path: <tarsnap-users-return-485-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Envelope-to: gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org
Original-Received: from mx2.tarsnap.com ([208.79.82.75])
	by lo.gmane.org with smtp (Exim 4.69)
	(envelope-from <tarsnap-users-return-485-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>)
	id 1RgNQ3-0004M2-Up
	for gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org; Thu, 29 Dec 2011 22:21:48 +0100
Original-Received: (qmail 56002 invoked from network); 29 Dec 2011 21:21:42 -0000
Original-Received: from unknown (HELO mx1.tarsnap.com) (192.168.0.25)
  by mx2.tarsnap.com with SMTP; 29 Dec 2011 21:21:42 -0000
Original-Received: (qmail 55801 invoked by uid 1025); 29 Dec 2011 21:21:41 -0000
Mailing-List: contact tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Help: <mailto:tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <mailto:tarsnap-users-unsubscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Subscribe: <mailto:tarsnap-users-subscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Delivered-To: mailing list tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Original-Received: (qmail 55788 invoked from network); 29 Dec 2011 21:21:41 -0000
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.2.25) Gecko/20111213 Lightning/1.0b2 Thunderbird/3.1.17
In-Reply-To: <4EF559C2.8060609-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
X-SA-Exim-Connect-IP: 68.189.245.235
X-SA-Exim-Mail-From: glarkin-4nlIFiKd+71dpuOT5p4XHl6hYfS7NtTn@public.gmane.org
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	mail1.sourcehosting.net
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL,BAYES_00,RCVD_IN_RP_RNBL,
	RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,TVD_RCVD_IP autolearn=no version=3.3.1
X-SA-Exim-Version: 4.2
X-SA-Exim-Scanned: Yes (on mail1.sourcehosting.net)
Xref: news.gmane.org gmane.comp.sysutils.backup.tarsnap.user:465
Archived-At: <http://permalink.gmane.org/gmane.comp.sysutils.backup.tarsnap.user/465>

On 12/23/11 11:49 PM, Colin Percival wrote:
> Can you try
>
> # tarsnap --dry-run -cvf testarchive file1 file1
> # tarsnap --dry-run -cvf testarchive part1 part1
> # tarsnap --dry-run -cvf testarchive part2 part2
> # tarsnap --dry-run -cvf testarchive part3 part3
>
> You should get a perfect 2:1 deduplication ratio (modulo overhead) storing the
> same file twice... but of course you should have gotten a 2:1 ratio when storing
> the file and its separate parts too, so I'd like to see if this works properly.
>
Hi Colin,

I ran those tests as shown, and each one worked as expected with a 2:1
ratio.  Then I ran a few more sequences, in case they help:

sh-3.2# tarsnap --dry-run -cvf testarchive file1 file1 part1
a file1
a file1
a part1
                                       Total size  Compressed size
All archives                            236079049        237256169
  (unique data)                         105008116        105526431
This archive                            236079049        237256169
New data                                105008116        105526431
sh-3.2# tarsnap --dry-run -cvf testarchive file1 file1 part1 part2
a file1
a file1
a part1
a part2
                                       Total size  Compressed size
All archives                            288540303        289974299
  (unique data)                         129278071        129911860
This archive                            288540303        289974299
New data                                129278071        129911860
sh-3.2# tarsnap --dry-run -cvf testarchive file1 file1 part1 part2 part3
a file1
a file1
a part1
a part2
a part3
                                       Total size  Compressed size
All archives                            314771757        316338103
  (unique data)                         138220066        138902042
This archive                            314771757        316338103
New data                                138220066        138902042

The first sequence looks ok (file1 file1 part1), but after that, the
"New data" number increases more than expected.  I have another Mac, and
I'll try the same tests to see if there's any machine-specific issue here.

Thank you,
Greg

