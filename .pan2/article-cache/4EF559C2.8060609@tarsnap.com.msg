Path: news.gmane.org!not-for-mail
From: Colin Percival <cperciva-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Newsgroups: gmane.comp.sysutils.backup.tarsnap.user
Subject: Re: Database backup and deduplication question
Date: Fri, 23 Dec 2011 20:49:06 -0800
Lines: 89
Approved: news@gmane.org
Message-ID: <4EF559C2.8060609@tarsnap.com>
References: <4EEFC1E6.5020606@sourcehosting.net> <4EF01785.4030205@tarsnap.com> <4EF0D7C8.6050107@sourcehosting.net> <4EF1C4C5.1070500@tarsnap.com> <4EF20A09.7070504@sourcehosting.net>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324702239 8640 80.91.229.12 (24 Dec 2011 04:50:39 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Sat, 24 Dec 2011 04:50:39 +0000 (UTC)
Cc: tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
To: Greg Larkin <glarkin-4nlIFiKd+71dpuOT5p4XHl6hYfS7NtTn@public.gmane.org>
Original-X-From: tarsnap-users-return-483-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org Sat Dec 24 05:50:35 2011
Return-path: <tarsnap-users-return-483-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Envelope-to: gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org
Original-Received: from mx2.tarsnap.com ([208.79.82.75])
	by lo.gmane.org with smtp (Exim 4.69)
	(envelope-from <tarsnap-users-return-483-gcsbtu-tarsnap-users=m.gmane.org-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>)
	id 1ReJZ3-0006vx-QA
	for gcsbtu-tarsnap-users-1dZseelyfdZg9hUCZPvPmw@public.gmane.org; Sat, 24 Dec 2011 05:50:34 +0100
Original-Received: (qmail 84416 invoked from network); 24 Dec 2011 04:50:28 -0000
Original-Received: from unknown (HELO mx1.tarsnap.com) (192.168.0.25)
  by mx2.tarsnap.com with SMTP; 24 Dec 2011 04:50:28 -0000
Original-Received: (qmail 84209 invoked by uid 1025); 24 Dec 2011 04:50:27 -0000
Mailing-List: contact tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Help: <mailto:tarsnap-users-help-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <mailto:tarsnap-users-unsubscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
List-Subscribe: <mailto:tarsnap-users-subscribe-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org>
Delivered-To: mailing list tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Delivered-To: moderator for tarsnap-users-C5KLY5ri3yZBDgjK7y7TUQ@public.gmane.org
Original-Received: (qmail 84099 invoked from network); 24 Dec 2011 04:50:00 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=sendgrid.info; h=
	message-id:date:from:mime-version:to:cc:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=smtpapi;
	 bh=Tac0/9c0wOqZ5BYHPcTWuNNfN7Y=; b=wC5j4r1rrQjXiXUiFoU4pdNAUR1p
	FtYuG26mWpqx6Ljv5i+bWe2zAtQIAhIxFeABdRZFNEZCenMx3C7G4k6n49yC9TV6
	QjSaDEB8Il5/RVYffIXOt7C4szi05uQvUhiJBBpYsb4gimE61BaqVOb6Ltdyfe2X
	XZ3rvErw2BbKd7M=
User-Agent: Mozilla/5.0 (X11; FreeBSD amd64; rv:8.0) Gecko/20111112 Thunderbird/8.0
In-Reply-To: <4EF20A09.7070504-4nlIFiKd+71dpuOT5p4XHl6hYfS7NtTn@public.gmane.org>
X-Enigmail-Version: undefined
X-Sendgrid-EID: YvctNFDdUD9jTH/sKjvO2a+R1+8NEXBZWnGgP1E4RxxNfnzul3l+kz//8pCkbAPsbgpubQX8uONi1dDUkB2YA9xz08pSxdr4YnIBYftpknlJ85zU/eFS+6MwcovTu7OnHwRJuG2KN6HpvrXJXwoTOYu4vZGSIPl5+nKgTYiM4zk=
Xref: news.gmane.org gmane.comp.sysutils.backup.tarsnap.user:463
Archived-At: <http://permalink.gmane.org/gmane.comp.sysutils.backup.tarsnap.user/463>

Sorry about the late reply... I've been a bit busy with FreeBSD stuff the
past couple of days.

On 12/21/11 08:32, Greg Larkin wrote:
> First, let me note that I'm running tarsnap 1.0.31 on Mac OS X 10.6.8,
> and it was installed with MacPorts (latest).  The standard llvm-gcc-4.2
> hangs during the build, so this executable is compiled with clang:
> 
> sh-3.2# clang --version
> Apple clang version 2.0 (tags/Apple/clang-137) (based on LLVM 2.9svn)
> Target: x86_64-apple-darwin10
> Thread model: posix
> 
> This probably doesn't matter, because up until this morning, I was using
> tarsnap 1.0.28 that was compiled with gcc-4.2, and the results haven't
> changed, but I thought I would mention it. 

If compiling using gcc vs. clang made a difference, it would mean that there
was something very broken... I'm glad that didn't fix the problem. :-)

> In both cases, the SSE2 option is enabled.

That won't affect anything; SSE2 is only used in the scrypt (passphrased
key files) code.

> + tarsnap --dry-run -cvf testarchive file1 part1 part2 part3
> a file1
> a part1
> a part2
> a part3
>                                        Total size  Compressed size
> All archives                            209848583        210891785
>   (unique data)                         138154492        138839900
> This archive                            209848583        210891785
> New data                                138154492        138839900

Very weird.

> I checked tarsnap.conf, and the default "checkpoint-bytes 1G" directive
> is present.

Ok, that shouldn't affect anything -- with that value the checkpoint
creation code won't be triggered.

> I also realized that my cache directory was left over from previous
> tests where I actually uploaded the random data, then nuked/fscked once
> I had finished.  Even still, there's a cache file in the cache
> directory, although I assume it's functionally empty.  Just for grins, I
> renamed the cache directory and ran the test again without changing the
> data files:
> [...]
> Everything is identical as before, so the caching is consistent in that
> respect.

Thanks, that rules out some possible explanations... doesn't tell me what
the actual problem is, though. :-/

> Finally, I ran tarsnap with multiple times, moving "file1" later in the
> chain each time.  The unique data number was always virtually the same
> as what's shown above, but interestingly, I did receive different "This
> archive/total size" values:
> 
> file1 part1 part2 part3:    209848583
> part1 file1 part2 part3:    209848623
> part1 part2 file1 part3:    209848623
> part1 part2 part3 file1:    209848583
> 
> Is that significant?

That 40 byte difference is caused by the number of chunks changing by 1
(there's a 40 byte chunk header of "overhead" for each chunk).  Nothing
particularly surprising there.

Can you try

# tarsnap --dry-run -cvf testarchive file1 file1
# tarsnap --dry-run -cvf testarchive part1 part1
# tarsnap --dry-run -cvf testarchive part2 part2
# tarsnap --dry-run -cvf testarchive part3 part3

You should get a perfect 2:1 deduplication ratio (modulo overhead) storing the
same file twice... but of course you should have gotten a 2:1 ratio when storing
the file and its separate parts too, so I'd like to see if this works properly.

-- 
Colin Percival
Security Officer, FreeBSD | freebsd.org | The power to serve
Founder / author, Tarsnap | tarsnap.com | Online backups for the truly paranoid

