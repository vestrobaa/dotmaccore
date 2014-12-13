#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# My own brew utilities

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Developer
brew install curl
brew install ctags
brew install cscope
brew install tmux
# brew install macvim

# Shell
#bash-git-prompt

# Versioning
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


# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Remove outdated versions from the cellar.
brew cleanup
