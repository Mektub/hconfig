Path: news.gmane.org!not-for-mail
From: Don Juan <donjuansjiz@gmail.com>
Newsgroups: gmane.linux.arch.general
Subject: Re: Is there a clean solution to get completely rid
 of Pulseaudio?
Date: Thu, 29 Dec 2011 10:57:14 -0800
Lines: 50
Approved: news@gmane.org
Message-ID: <4EFCB80A.10000@gmail.com>
References: <1324629697.9930.38.camel@localhost.localdomain>
 <1324637340.10606.124.camel@localhost.localdomain>
 <CAMw+j7Lt_scVbwj7BfW6uQVfM6=a5R01vaGsLsvyGhZ0SiH1nA@mail.gmail.com>
 <10860676.TolBvm7Dii@leto> <20111229053635.GA2806@linlap.wavecable.com>
 <CAGQ70ev-Ek66X9ygkDfcD_N8XD++bO4NfjR1fenYOGk4ioDmNg@mail.gmail.com>
Reply-To: General Discussion about Arch Linux <arch-general@archlinux.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1325185072 27205 80.91.229.12 (29 Dec 2011 18:57:52 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Thu, 29 Dec 2011 18:57:52 +0000 (UTC)
To: General Discussion about Arch Linux <arch-general@archlinux.org>
Original-X-From: arch-general-bounces@archlinux.org Thu Dec 29 19:57:48 2011
Return-path: <arch-general-bounces@archlinux.org>
Envelope-to: glag-arch@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <arch-general-bounces@archlinux.org>)
	id 1RgLAh-0007Za-TV
	for glag-arch@m.gmane.org; Thu, 29 Dec 2011 19:57:48 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 6767C9011B;
	Thu, 29 Dec 2011 13:57:41 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 7B14786179
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 13:57:39 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.216.44 is authorized
 to use 'donjuansjiz@gmail.com' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="donjuansjiz@gmail.com";
 helo=mail-qw0-f44.google.com; client-ip=209.85.216.44
Original-Received: from mail-qw0-f44.google.com (mail-qw0-f44.google.com
 [209.85.216.44])
 by gerolde.archlinux.org (Postfix) with ESMTPS id 69F44900C5
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 13:57:38 -0500 (EST)
Original-Received: by qadb15 with SMTP id b15so8048383qad.3
 for <arch-general@archlinux.org>; Thu, 29 Dec 2011 10:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-type:content-transfer-encoding;
 bh=G9iBNSPchsQSO908zZPI5e8Cas88Y1MJgxzJu4sH49c=;
 b=P0EG8xPR1qXoOJa1Bz5juyUjHIJlk4VRmYF60Q9q+B/bPSg+2wO1xXR4AD7tLOPFHf
 /IoHqDCBfH8PAu2JAsq5afP+oHAeVCylyuXqvCKSYy8OCQx0jPA4A0VmWN8G2byFWgrK
 uRea9v9Ovmw5KXrvjnjJWUmpLOydHBXfWYLWg=
Original-Received: by 10.224.200.197 with SMTP id ex5mr105653qab.88.1325185062108;
 Thu, 29 Dec 2011 10:57:42 -0800 (PST)
Original-Received: from [192.168.1.17] (dpc674485156.direcpc.com. [67.44.85.156])
 by mx.google.com with ESMTPS id q14sm66988304qap.4.2011.12.29.10.57.35
 (version=SSLv3 cipher=OTHER); Thu, 29 Dec 2011 10:57:41 -0800 (PST)
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:9.0) Gecko/20111222 Thunderbird/9.0.1
In-Reply-To: <CAGQ70ev-Ek66X9ygkDfcD_N8XD++bO4NfjR1fenYOGk4ioDmNg@mail.gmail.com>
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
Xref: news.gmane.org gmane.linux.arch.general:38467
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.general/38467>

On 12/28/2011 10:16 PM, Oon-Ee Ng wrote:
> On Thu, Dec 29, 2011 at 1:36 PM, Steve Holmes<steve.holmes88@gmail.com>  wrote:
>> On Fri, Dec 23, 2011 at 11:18:33AM +0000, Paul Gideon Dann wrote:
>>> Seriously?  It's comments like this that make me wonder if subscribing to this
>>> list is really worth it.  At least you did go on to provide some useful
>>> information, albeit in a "if I MUST stoop down to your level" kind of tone.
>>>
>>>> My suggestion is: (a) stop whining; or (b) learn how to code and cut
>>>> out all sound stuff out of gnome-settings-daemon.  No matter what you
>>>> choose, there is one more option, which is much better: GET OUTTA HERE
>>>> and use Debian if you like it so much.  Not right?  Then buy a Mac.
>>>> Or Windows if you want to.  PERIOD.
>>> Wow.  I'm truly mortified that the Linux world is associated with behaviour
>>> like yours.  What gives you the right to talk like that to *anyone*, let alone
>>> someone who came to us for help?
>>>
>>> Paul
>> +1
>>
>> I've sure seen my share of rude and discurtius answers tonight.  I
>> understand if the discussion drags on and yes, Ralph was given some
>> constructive answers about gnome and its dependencies.  And yes, Ralph
>> needs to except the reasoning about upstream designs outside of Arch's
>> control.  but still, the put-downs are quite unnecessary as far as I'm
>> concerned.
> Both the initial mail and the put-downs, would you agree? The problem
> with these sort of 'questions' is how they keep cropping up. Not just
> talking about pulseaudio, but the whole 'Arch is supposed to be this
> because I believe it' stuff is tiresome.

At least here you dont get the insane amount of spam like on debian 
boards and people here want to help even if in a rude tone. And most 
dont get offended here easily if someone miss speaks or does not fully 
grasp the English language. Debian boards are the reason I switched to 
Arch and while yes it a whole new world and way of thinking some just 
are slower to adopt that most of the issues can be solved on the wiki.  
Tiresome or not its the way of life on boards there is always good and 
bad. Though I still dont grasp if reading a message gets you so pissy 
you have to resort to high school antics you probably should  not be 
responding to that message. If its a repeated question why not either no 
one respond which would force the person to research on their own or 
just send one message to check the wiki and or other pertinent place 
where the info has been said numerous times. I am on gumstix board as 
well and thats how they roll, stupid question or one thats commonly 
asked and answered tons of times just get ignored or someone takes 2 
seconds to say hey read the wiki or search the archives of this board 
question has been answered.

Just my .02 from a recent Arch convert.

