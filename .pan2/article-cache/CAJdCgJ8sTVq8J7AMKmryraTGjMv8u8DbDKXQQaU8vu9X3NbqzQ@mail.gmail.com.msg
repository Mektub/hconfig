Path: news.gmane.org!not-for-mail
From: Andrew Gregory <andrew.gregory.8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Newsgroups: gmane.linux.arch.pacman.devel
Subject: Re: [PATCH] allow querying fileowner for directories
Date: Thu, 22 Dec 2011 23:29:03 -0500
Lines: 373
Approved: news@gmane.org
Message-ID: <CAJdCgJ8sTVq8J7AMKmryraTGjMv8u8DbDKXQQaU8vu9X3NbqzQ@mail.gmail.com>
References: <CAEik5nPgxKgHP=oX=K38p6GC3wqpGMHYLJhTzXxncY=Vq_4FOg@mail.gmail.com>
 <1322010730-13563-1-git-send-email-andrew.gregory.8@gmail.com>
Reply-To: Discussion list for pacman development <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
NNTP-Posting-Host: lo.gmane.org
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Trace: dough.gmane.org 1324614553 7670 80.91.229.12 (23 Dec 2011 04:29:13 GMT)
X-Complaints-To: usenet@dough.gmane.org
NNTP-Posting-Date: Fri, 23 Dec 2011 04:29:13 +0000 (UTC)
To: pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-X-From: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org Fri Dec 23 05:29:09 2011
Return-path: <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
Envelope-to: glapd-pacman-dev@m.gmane.org
Original-Received: from gerolde.archlinux.org ([66.211.214.132])
	by lo.gmane.org with esmtp (Exim 4.69)
	(envelope-from <pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>)
	id 1Rdwkl-0004CV-VQ
	for glapd-pacman-dev@m.gmane.org; Fri, 23 Dec 2011 05:29:08 +0100
Original-Received: from gudrun.archlinux.org (gudrun.archlinux.org [66.211.214.131])
	by gerolde.archlinux.org (Postfix) with ESMTP id 41E6690065;
	Thu, 22 Dec 2011 23:29:04 -0500 (EST)
Original-Received: from gerolde.archlinux.org (gerolde.archlinux.org [66.211.214.132])
 by gudrun.archlinux.org (Postfix) with ESMTP id 09CE886163
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Thu, 22 Dec 2011 23:29:03 -0500 (EST)
Received-SPF: pass (gmail.com ... _spf.google.com: 209.85.216.51 is authorized
 to use 'andrew.gregory.8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org' in 'mfrom' identity (mechanism
 'ip4:209.85.128.0/17' matched)) receiver=gerolde.archlinux.org;
 identity=mailfrom; envelope-from="andrew.gregory.8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org";
 helo=mail-qw0-f51.google.com; client-ip=209.85.216.51
Original-Received: from mail-qw0-f51.google.com (mail-qw0-f51.google.com
 [209.85.216.51])
 by gerolde.archlinux.org (Postfix) with ESMTPS id CE44590062
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Thu, 22 Dec 2011 23:29:02 -0500 (EST)
Original-Received: by qadz3 with SMTP id z3so6111458qad.3
 for <pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>; Thu, 22 Dec 2011 20:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
 h=mime-version:in-reply-to:references:date:message-id:subject:from:to
 :content-type; bh=oebfLpJqpFXnwlrrBpeOqaDDCvLGre1YH9Qd/auqQgM=;
 b=bt2CgNg3qxlMmRUn4zIX0bAyK0jfEoLxxLTeNBKVlQHFeKR4nVCsXEJWb3CGAau3xL
 cU9qWlSi8USgmpAAhcRxNHpuSApHfcE0q3lGy6Y/9up5/oUJjDJKH32g7NL7eyYHII7J
 p/4HzhnG1v3vRDpM3g/rA0y8Oa5aHndmpPLGA=
Original-Received: by 10.224.177.196 with SMTP id bj4mr16825543qab.81.1324614543221;
 Thu, 22 Dec 2011 20:29:03 -0800 (PST)
Original-Received: by 10.229.228.8 with HTTP; Thu, 22 Dec 2011 20:29:03 -0800 (PST)
In-Reply-To: <1322010730-13563-1-git-send-email-andrew.gregory.8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
X-Content-Filtered-By: Mailman/MimeDel 2.1.14
X-BeenThere: pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
X-Mailman-Version: 2.1.14
Precedence: list
List-Id: Discussion list for pacman development <pacman-dev.archlinux.org>
List-Unsubscribe: <http://mailman.archlinux.org/mailman/options/pacman-dev>,
 <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=unsubscribe>
List-Archive: <http://mailman.archlinux.org/pipermail/pacman-dev>
List-Post: <mailto:pacman-dev-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org>
List-Help: <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=help>
List-Subscribe: <http://mailman.archlinux.org/mailman/listinfo/pacman-dev>,
 <mailto:pacman-dev-request-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org?subject=subscribe>
Errors-To: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Original-Sender: pacman-dev-bounces-fd97jBR+K/6hPH1hqNUYSQ@public.gmane.org
Xref: news.gmane.org gmane.linux.arch.pacman.devel:8727
Archived-At: <http://permalink.gmane.org/gmane.linux.arch.pacman.devel/8727>

On Tue, Nov 22, 2011 at 8:12 PM, <andrew.gregory.8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> From: Andrew Gregory <andrew.gregory.8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
> Removed restriction on querying the owner of a directory.
> Replaced mbasename and mdirname with pbasename and pdirname,
> similar to their POSIX namesakes except that they do not
> modify path, subsequent calls do not modify previous return
> values, and the returned values need to be freed.  One
> potential gotcha is that if a symlink is queried using '.'
> or '..' it will first be resolved to its target directory.
> For Example:
>  cd /var/mail
>  pacman -Qo .
>   /var/spool/mail is owned by filesystem ...
>  pacman -Qo ../mail
>   /var/mail is owned by filesystem...
>
> Signed-off-by: Andrew Gregory <andrew.gregory.8-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>
> Hope I got the patch formatting right this time.  Quick test results
> below where you can see the 'gotcha' described in the commit.
>
> Test Results:
>  ln -s /usr/share /tmp/foo
>   cd /tmp
>   pacman -Qo
>    /var/spool/mail
>    /var/spool/mail/
>    /var/mail
>    /var/mail/
>    /tmp/foo
>    /tmp/foo/
>    firefox
>    /usr/bin/firefox
>    /
>    /nonexistent
>     /var/mail/.
>    /var/mail/./
>    /tmp
>    .
>    ..
>    ./..
>
>  /var/spool/mail is owned by filesystem 2011.10-1
>  /var/spool/mail/ is owned by filesystem 2011.10-1
>  /var/mail is owned by filesystem 2011.10-1
>  /var/mail/ is owned by filesystem 2011.10-1
>  error: No package owns /tmp/foo
>  error: No package owns /tmp/foo/
>  /usr/bin/firefox is owned by firefox 8.0-1
>  /usr/bin/firefox is owned by firefox 8.0-1
>  error: No package owns /
>  error: failed to read file '/nonexistent': No such file or directory
>  /var/spool/mail is owned by filesystem 2011.10-1
>  /var/spool/mail is owned by filesystem 2011.10-1
>   /tmp is owned by filesystem 2011.10-1
>  /tmp is owned by filesystem 2011.10-1
>   error: No package owns /
>   error: No package owns /
>
>
>  src/pacman/pacman.c |    2 +-
>  src/pacman/query.c  |   75 +++++++++++++++++++++----------------------
>  src/pacman/util.c   |   89
> ++++++++++++++++++++++++++++++++++----------------
>  src/pacman/util.h   |    4 +-
>  4 files changed, 100 insertions(+), 70 deletions(-)
>
> diff --git a/src/pacman/pacman.c b/src/pacman/pacman.c
> index fa35e8d..4b356fb 100644
> --- a/src/pacman/pacman.c
> +++ b/src/pacman/pacman.c
> @@ -657,7 +657,7 @@ static int parseargs(int argc, char *argv[])
>                return 1;
>        }
>        if(config->help) {
> -               usage(config->op, mbasename(argv[0]));
> +               usage(config->op, pbasename(argv[0]));
>                return 2;
>        }
>        if(config->version) {
> diff --git a/src/pacman/query.c b/src/pacman/query.c
> index 4c2ea81..2769dc3 100644
> --- a/src/pacman/query.c
> +++ b/src/pacman/query.c
> @@ -127,7 +127,7 @@ static int query_fileowner(alpm_list_t *targets)
>         * iteration. */
>        root = alpm_option_get_root(config->handle);
>        rootlen = strlen(root);
> -       if(rootlen + 1 > PATH_MAX) {
> +       if(rootlen >= PATH_MAX) {
>                /* we are in trouble here */
>                pm_printf(ALPM_LOG_ERROR, _("path too long: %s%s\n"), root,
> "");
>                return 1;
> @@ -137,11 +137,11 @@ static int query_fileowner(alpm_list_t *targets)
>        db_local = alpm_option_get_localdb(config->handle);
>
>        for(t = targets; t; t = alpm_list_next(t)) {
> -               char *filename, *dname, *rpath;
> -               const char *bname;
> +               char *filename, *bname, *dname, *rpath = NULL;
>                 struct stat buf;
>                alpm_list_t *i;
>                int found = 0;
> +               int searchall = 0;
>
>                filename = strdup(t->data);
>
> @@ -164,69 +164,67 @@ static int query_fileowner(alpm_list_t *targets)
>                        }
>                }
>
> -               if(S_ISDIR(buf.st_mode)) {
> -                       pm_printf(ALPM_LOG_ERROR,
> -                               _("cannot determine ownership of directory
> '%s'\n"), filename);
> -                       ret++;
> -                       free(filename);
> -                       continue;
> -               }
> +               searchall = S_ISDIR(buf.st_mode);
>
> -               bname = mbasename(filename);
> -               dname = mdirname(filename);
> -               /* for files in '/', there is no directory name to match */
> -               if(strcmp(dname, "") == 0) {
> -                       rpath = NULL;
> -               } else {
> -                       rpath = resolve_path(dname);
> +               bname = pbasename(filename);
> +               /* if the basename is given as '.' or '..' we need to get
> the
> +                * actual basename */
> +               if(strcmp(bname, ".") == 0 || strcmp(bname, "..") == 0) {
> +                       char *oldfilename = filename;
> +                       filename = resolve_path(oldfilename);
> +                       free(oldfilename);
>
> -                       if(!rpath) {
> -                               pm_printf(ALPM_LOG_ERROR, _("cannot
> determine real path for '%s': %s\n"),
> -                                               filename, strerror(errno));
> -                               free(filename);
> -                               free(dname);
> -                               free(rpath);
> -                               ret++;
> -                               continue;
> -                       }
> +                       free(bname);
> +                       bname = pbasename(filename);
>                }
> +
> +               dname = pdirname(filename);
> +               rpath = resolve_path(dname);
>                 free(dname);
>
> -               for(i = alpm_db_get_pkgcache(db_local); i && !found; i =
> alpm_list_next(i)) {
> +               if(!rpath) {
> +                       pm_printf(ALPM_LOG_ERROR, _("cannot determine real
> path for '%s': %s\n"),
> +                                       filename, strerror(errno));
> +                       free(filename);
> +                       free(bname);
> +                       free(rpath);
> +                       ret++;
> +                       continue;
> +               }
> +
> +               for(i = alpm_db_get_pkgcache(db_local); i && (searchall ||
> !found); i = alpm_list_next(i)) {
>                        alpm_pkg_t *info = i->data;
>                        alpm_filelist_t *filelist =
> alpm_pkg_get_files(info);
>                        size_t j;
>
>                         for(j = 0; j < filelist->count; j++) {
>                                const alpm_file_t *file = filelist->files +
> j;
> -                               char *ppath, *pdname;
> +                               char *ppath, *pbname, *pdname;
>                                 const char *pkgfile = file->name;
>
>                                /* avoid the costly resolve_path usage if
> the basenames don't match */
> -                               if(strcmp(mbasename(pkgfile), bname) != 0)
> {
> +                               pbname = pbasename(pkgfile);
> +                               if(strcmp(pbname, bname) != 0) {
> +                                       free(pbname);
>                                        continue;
>                                }
> +                               free(pbname);
>
> -                               /* for files in '/', there is no directory
> name to match */
> -                               if(!rpath) {
> -                                       print_query_fileowner(filename,
> info);
> -                                       found = 1;
> -                                       continue;
> -                               }
> -
> -                               if(rootlen + 1 + strlen(pkgfile) >
> PATH_MAX) {
> +                               if(rootlen + strlen(pkgfile) >= PATH_MAX) {
>                                        pm_printf(ALPM_LOG_ERROR, _("path
> too long: %s%s\n"), root, pkgfile);
>                                }
>                                /* concatenate our file and the root path */
>                                strcpy(path + rootlen, pkgfile);
>
> -                               pdname = mdirname(path);
> +                               pdname = pdirname(path);
>                                ppath = resolve_path(pdname);
>                                free(pdname);
>
>                                if(ppath && strcmp(ppath, rpath) == 0) {
>                                        print_query_fileowner(filename,
> info);
> +                                       free(ppath);
>                                         found = 1;
> +                                       break;
>                                }
>                                free(ppath);
>                        }
> @@ -236,6 +234,7 @@ static int query_fileowner(alpm_list_t *targets)
>                        ret++;
>                }
>                free(filename);
> +               free(bname);
>                free(rpath);
>        }
>
> diff --git a/src/pacman/util.c b/src/pacman/util.c
> index c0dcb9f..7f480ccb 100644
> --- a/src/pacman/util.c
> +++ b/src/pacman/util.c
> @@ -208,46 +208,77 @@ int rmrf(const char *path)
>         }
>  }
>
> -/** Parse the basename of a program from a path.
> -* @param path path to parse basename from
> -*
> -* @return everything following the final '/'
> -*/
> -const char *mbasename(const char *path)
> +/** Parse the basename from a path.
> + * Implements POSIX basename with the following exceptions:
> + *   the basename returned should be freed
> + *   path is never modified
> + *   subsequent calls never modify previously returned results
> + * @param path path to parse parent from
> + * @return NULL on error, "." if path is NULL, basename of path otherwise
> + */
> +char *pbasename(const char *path)
>  {
> -       const char *last = strrchr(path, '/');
> -       if(last) {
> -               return last + 1;
> +       if(path == NULL || path == '\0') {
> +               return strdup(".");
> +       }
> +
> +       const char *last = path + strlen(path) - 1;
> +
> +       /* move left of any trailing '/' */
> +       while(*last == '/' && last != path) {
> +               last--;
> +       }
> +
> +       /* if we made it all the way to the beginning whatever's there has
> to be our
> +        * basename */
> +       if(last == path) {
> +               return strndup(last, 1);
> +       }
> +
> +       const char *first = last;
> +       /* find first '/' to the left */
> +       while(*first != '/' && first != path) {
> +               first--;
> +       }
> +       if(*first == '/') {
> +               first++;
>        }
> -       return path;
> +
> +       return strndup(first, last - first + 1);
>  }
>
> -/** Parse the dirname of a program from a path.
> -* The path returned should be freed.
> -* @param path path to parse dirname from
> -*
> -* @return everything preceding the final '/'
> -*/
> -char *mdirname(const char *path)
> +/** Parse the parent directory from a path.
> + * Implements POSIX dirname with the following exceptions:
> + *   the path returned should be freed
> + *   path is never modified
> + *   subsequent calls never modify previously returned results
> + * @param path path to parse parent from
> + * @return NULL on error, "." if path is NULL, parent directory of path
> otherwise
> + */
> +char *pdirname(const char *path)
>  {
> -       char *ret, *last;
> -
> -       /* null or empty path */
>        if(path == NULL || path == '\0') {
>                return strdup(".");
>        }
>
> -       ret = strdup(path);
> -       last = strrchr(ret, '/');
> +       const char *last = path + strlen(path) - 1;
>
> -       if(last != NULL) {
> -               /* we found a '/', so terminate our string */
> -               *last = '\0';
> -               return ret;
> +       /* move left of any trailing '/' */
> +       while(*last == '/' && last != path) {
> +               last--;
> +       }
> +
> +       /* find next '/' to the left */
> +       while(*last != '/' && last != path) {
> +               last--;
>         }
> -       /* no slash found */
> -       free(ret);
> -       return strdup(".");
> +
> +       /* didn't find another '/', no parent dir */
> +       if(*last != '/') {
> +               return strdup(".");
> +       }
> +
> +       return strndup(path, last - path + 1);
>  }
>
>  /* output a string, but wrap words properly with a specified indentation
> diff --git a/src/pacman/util.h b/src/pacman/util.h
> index 6ec962f..eaa3c40 100644
> --- a/src/pacman/util.h
> +++ b/src/pacman/util.h
> @@ -52,8 +52,8 @@ int needs_root(void);
>  int check_syncdbs(size_t need_repos, int check_valid);
>  unsigned short getcols(void);
>  int rmrf(const char *path);
> -const char *mbasename(const char *path);
> -char *mdirname(const char *path);
> +char *pbasename(const char *path);
> +char *pdirname(const char *path);
>  void indentprint(const char *str, size_t indent);
>  char *strtoupper(char *str);
>  char *strtrim(char *str);
> --
> 1.7.7.4
>
>
Haven't seen any movement on this yet.  Were there any other concerns I did
not address?


