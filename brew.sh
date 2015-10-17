#!/usr/bin/env bash

# Note: This should really call ~/dotfiles/brew.sh first and then add my custom brew utils

# Install command-line tools using Homebrew.

# My own brew utilities

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Remove suspicious
brew remove john

# Developer
brew install curl
brew install ctags
brew install cscope
brew install tmux
# brew install macvim

# Shell
#bash-git-prompt

# Versioning
brew install git
brew install tig
brew install mercurial

# Publishing
brew install pandoc
brew install asciidoc

# Multi mediq
brew install youtube-dl

# Other
brew install sqlite
brew install zeromq
brew install cmake
brew install mutt

# Utils

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum




# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen


# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install nmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace


# Remove outdated versions from the cellar.
brew cleanup
