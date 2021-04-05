#!/bin/bash

# """ setup homebrew """
# install homebrew
xcode-select --install
rusr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# install packages from homebrew
brew tap saulpw/vd
brew tap goodwithtech/r
brew tap aquasecurity/trivy
brew install act ansible ansible-lint autojump curl dockle git go grep hadolint htop hugo \
             jq md5sha1sum molecule nmap openssh openssl python3 sshrc \
             inetutils starship trivy vagrant vim visidata watch wget zsh zsh-autosuggestions zsh-syntax-highlighting

# install packages from homebrew cask
brew install caskroom/cask/brew-cask
brew cask install bitwarden docker element firefox keepingyouawake \
                  iterm2 signal spotify standard-notes virtualbox visual-studio-code vlc wireshark --force

# cleanup
brew cleanup

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add .zshrc configurations
echo '''export PATH="/usr/local/sbin:$PATH"
eval "$(starship init zsh)"''' | tee -a ~/.zshrc

# Enable zsh plugins
sed 's/\(^plugins=([^)]*\)/\1 autojump brew vagrant zsh-autosuggestions zsh-syntax-highlighting/' .zshrc

# install xcode-select
xcode-select --install

# """ install visidata """
pip3 install dpkt lxml virtualenv

# """ setup git """
cp gitconfig ~/.gitconfig

# Setup Starship
mkdir -p ~/.config
cp starship.toml ~/.config/starship.toml

source ~/.zshrc
