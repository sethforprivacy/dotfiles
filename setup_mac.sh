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
brew install cloc curl git go grep htop iproute2mac irssi jq md5sha1sum nmap \
             openssh openssl python python@2 python3 rsync screen sshrc \
             sqlite telnet tmux vim watch wget xz

# install packages from homebrew cask
brew install caskroom/cask/brew-cask
brew cask install atom docker dropbox flux firefox google-chrome gpg-suite keepingyouawake \
                  iterm2 postman the-unarchiver virtualbox vlc wireshark whatsapp --force

# cleanup
brew cleanup

# """ setup git """
cp gitconfig ~/.gitconfig

# """ install visidata """
pip3 install visidata dpkt lxml

# """ setup vim """
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/undo
cp vimrc ~/.vimrc

