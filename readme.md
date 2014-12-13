# DotMacCore repository

MacBook development environment

# Configuration

Start with a generic MacBook developer environment. Then play all the custom config


## Basic

Install Mithias' [dotfiles](https://github.com/mathiasbynens/dotfiles.git) (to ~/.dotfiles)

`./brew.sh` to install the basic developer utilites

## Custom

Install [DotVimCore](https://github.com/vestrobaa/dotvimcore.git) (to ~/.vim)  
Install [DotMacCore](https://github.com/vestrobaa/dotmaccore.git) (to ~/.macfiles)

    cd ~/.macfiles
    ./bootstrap.sh
    ./brew.sh
    source ~/.extra

# Update

    # Update dotfiles
    cd ~/.dotfiles
    git pull origin master

    # Update my vim settings
    cd ~/.vim
    git pull origin master
    git submodule init
    git submodule update

    # Update my Mac settings
    cd ~/.macfiles
    git pull origin master

# TODO

-   List git folders in a different color
-   Trash Fish
-   Set git defaults
    -   Watch out for project specific git settings

# Generic dotfile issues

-   Not rvm aware
-       Reset system ruby before updates `rvm system`

