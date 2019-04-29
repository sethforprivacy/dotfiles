#!/bin/bash
# TODO add --personal flag to include additional packages
# NOTE future cask ideas: airpass nightowl there

# """ setup homebrew """
# install homebrew
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# install packages from homebrew
brew install cloc curl git go grep htop iproute2mac irssi jq md5sha1sum nmap \
             openssh openssl python python@2 python3 rsync screen sshrc \
             sqlite telnet watch wget xz

# install packages from homebrew cask
brew install caskroom/cask/brew-cask
brew cask install atom docker dropbox flux firefox google-chrome gpg-suite keepingyouawake \
                  iterm2 postman the-unarchiver virtualbox vlc wireshark --force

# cleanup
brew cleanup

# """ install visidata """
pip3 install visidata dpkt lxml

# """ setup bash """
echo "alias ll='ls -la'" >> ~/.bash_profile
echo "weather() { curl wttr.in/\"$@\"; }" >> ~/.bash_profile
echo "alias g='git'" >> ~/.bash_profile
echo "alias gs='git status '" >> ~/.bash_profile
echo "alias ga='git add '" >> ~/.bash_profile
echo "alias gb='git branch '" >> ~/.bash_profile
echo "alias gc='git commit'" >> ~/.bash_profile
echo "alias gd='git diff'" >> ~/.bash_profile
echo "alias gco='git checkout '" >> ~/.bash_profile

# """ setup vim """
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/undo
cp vimrc ~/.vimrc

# """ setup git """
cp gitconfig ~/.gitconfig
