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

