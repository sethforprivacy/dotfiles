#!/bin/bash
# TODO add --personal flag to include additional packages
# NOTE future cask ideas: airpass nightowl there

# """ setup bash """
cp ~/.bash_profile ~/.bash_profile.bak
cp bash_profile ~/.bash_profile

# """ setup homebrew """
# install homebrew
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# install packages from homebrew
brew install ansible ansible-lint cloc curl git go grep htop iproute2mac \
             jq md5sha1sum nmap openssh openssl python3 rsync screen sshrc \
             inetutils tmux vim watch wget xz zstd zsh

# install packages from homebrew cask
brew install caskroom/cask/brew-cask
brew cask install visual-studio-code docker dropbox flux firefox gpg-suite keepassxc keepingyouawake \
                  iterm2 postman the-unarchiver tresorit virtualbox vlc wireshark signal --force

# cleanup
brew cleanup

# install xcode-select
xcode-select --install

# """ setup git """
cp gitconfig ~/.gitconfig

# """ install visidata """
pip3 install visidata dpkt lxml virtualenv

# """ setup vim """
./setup_vim.sh
