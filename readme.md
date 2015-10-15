# How to use dotmaccore

Pull the dofiles from [mathias bynens](https://github.com/mathiasbynens/dotfiles.git)
This is geared towards jscript/node, so make sure to reset ruby to home
cd dotfiles && source bootstrap.sh

Now clone dotmaccore
cd dotmaccore && bootstrap.sh

Run the git setup if it's not already set:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

See my current brew listing at the bottom

# Git config

To-do: Make the git config part of the dotfile update


alias.l=log --pretty=oneline -n 20 --graph --abbrev-commit
alias.s=status -s
alias.d=!git diff-index --quiet HEAD -- || clear; git --no-pager diff --patch-with-stat
alias.di=!d() { git diff --patch-with-stat HEAD~$1; }; git diff-index --quiet HEAD -- || clear; d
alias.p=!git pull; git submodule foreach git pull origin master
alias.c=clone --recursive
alias.ca=!git add -A && git commit -av
alias.go=!f() { git checkout -b "$1" 2> /dev/null || git checkout "$1"; }; f
alias.tags=tag -l
alias.branches=branch -a
alias.remotes=remote -v
alias.amend=commit --amend --reuse-message=HEAD
alias.credit=!f() { git commit --amend --author "$1 <$2>" -C HEAD; }; f
alias.reb=!r() { git rebase -i HEAD~$1; }; r
alias.retag=!r() { git tag -d $1 && git push origin :refs/tags/$1 && git tag $1; }; r
alias.fb=!f() { git branch -a --contains $1; }; f
alias.ft=!f() { git describe --always --contains $1; }; f
alias.fc=!f() { git log --pretty=format:'%C(yellow)%h  %Cblue%ad  %Creset%s%Cgreen  [%cn] %Cred%d' --decorate --date=short -S$1; }; f
alias.fm=!f() { git log --pretty=format:'%C(yellow)%h  %Cblue%ad  %Creset%s%Cgreen  [%cn] %Cred%d' --decorate --date=short --grep=$1; }; f
alias.dm=!git branch --merged | grep -v '\*' | xargs -n 1 git branch -d
alias.contributors=shortlog --summary --numbered
alias.mpr=!f() { 		if [ $(printf "%s" "$1" | grep '^[0-9]\+$' > /dev/null; printf $?) -eq 0 ]; then 			git fetch origin refs/pull/$1/head:pr/$1 && 			git rebase master pr/$1 && 			git checkout master && 			git merge pr/$1 && 			git branch -D pr/$1 && 			git commit --amend -m "$(git log -1 --pretty=%B)

Closes #$1."; 		fi 	}; f
apply.whitespace=fix
core.excludesfile=~/.gitignore
core.attributesfile=~/.gitattributes
core.whitespace=space-before-tab,-indent-with-non-tab,trailing-space
core.trustctime=false
core.precomposeunicode=false
color.ui=auto
color.branch.current=yellow reverse
color.branch.local=yellow
color.branch.remote=green
color.diff.meta=yellow bold
color.diff.frag=magenta bold
color.diff.old=red
color.diff.new=green
color.status.added=yellow
color.status.changed=green
color.status.untracked=cyan
diff.renames=copies
diff.bin.textconv=hexdump -v -C
help.autocorrect=1
merge.log=true
push.default=matching
push.followtags=true
url.git@github.com:.insteadof=gh:
url.git@github.com:.pushinsteadof=github:
url.git@github.com:.pushinsteadof=git://github.com/
url.git://github.com/.insteadof=github:
url.git@gist.github.com:.insteadof=gst:
url.git@gist.github.com:.pushinsteadof=gist:
url.git@gist.github.com:.pushinsteadof=git://gist.github.com/
url.git://gist.github.com/.insteadof=gist:


# Mac Commands

Sizes of directories    `tree -du -L 1`  
and                     `du -d1 ~`  
System log cleanup      `sudo periodic daily weekly monthly`  

Search files via spotlight  `mdfind <filename>`  
Show file info              `mdshow <filename>`  

List git folders        `find . -name .git -type d -print`  


### Checksum for downloads on Mac
    - shasum <fn>
    - openssl sha1 <drop file>


###Install homebrew

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

from:

http://mxcl.github.io/homebrew/

Install fine. Comment to run:
brew doctor
brwe help
###Old Path

PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

###New Path
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

###Permanent path on OS X

Create ~/.bash_profile with:
`export PATH=/usr/local/bin:$PATH`

# Trashed my work mashine's mbr!!!


fixboot c:
fixmbr

Bootrec.exe /FixBoot
Bootrec.exe /FixMBR

FixMbr

MbrFix /drive 0 fixmbr /win7



# Pull all git masters

### [update\_git\_repos.sh](https://gist.github.com/douglas/1287372)

#### Notes

Dangerous! Use with care

- This will pull master over the current checked out branch
- Submodules will go out of sync

#### Code

    #!/bin/bash

    # store the current dir
    CUR_DIR=$(pwd)

    # Let the person running the script know what's going on.
    echo -e "\n\033[1mPulling in latest changes for all repositories...\033[0m\n"

    # Find all git repositories and update it to the master latest revision
    for i in $(find . -name ".git" | cut -c 3-); do
        echo -e "";
        echo -e "\033[33m"+$i+"\033[0m";

        # We have to go to the .git parent directory to call the pull command
        cd "$i";
        cd ..;

        # finally pull
        git pull origin master;

        # lets get back to the CUR_DIR
        cd $CUR_DIR
    done

    echo -e "\n\033[32mComplete!\033[0m\n"


# Brew listing


ack
apple-gcc42
asciidoc
autoconf
automake
bash
bash-completion
bash-git-prompt
bfg
binutils
binwalk
boost
brew-cask
cairo
cifer
cloog
cmake
coreutils
cscope
ctags
curl
czmq
dex2jar
dns2tcp
docbook
docbook-xsl
faac
fcrackzip
ffmpeg
findutils
fontconfig
fontforge
foremost
freetype
gcc
gdbm
gettext
git
git-flow
glib
gmp
gnu-getopt
gnu-sed
gobject-introspection
grep
harfbuzz
hashpump
hydra
icu4c
imagemagick
irssi
isl
john
jpeg
knock
lame
libdnet
libevent
libffi
libgpg-error
libidn
libksba
libmagic
libmpc
libpng
libsodium
libtiff
libtool
libvo-aacenc
libxml2
libyaml
little-cms2
lua
lynx
macvim
mercurial
moreutils
mpfr
mutt
mysql
narwhal
ngrep
nmap
node
openjpeg
openssl
p7zip
pandoc
pango
pcre
pdf2htmlex
pigz
pixman
pkg-config
pngcheck
poppler
pstree
pv
pyside
python
python3
qt
readline
rename
rhino
ringojs
screen
shiboken
socat
sqlite
sqlmap
ssdeep
swig
tcpflow
tcpreplay
tcptrace
texi2html
tig
tmux
tokyo-cabinet
tree
ttfautohint
ucspi-tcp
vim
vimpager
webkit2png
wget
x264
xmlto
xvid
xz
yasm
youtube-dl
zeromq
zopfli
