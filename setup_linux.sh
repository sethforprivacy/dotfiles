#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

# install packages from homebrew
brew tap saulpw/vd
brew tap goodwithtech/r
brew tap aquasecurity/trivy
brew install act ansible ansible-lint autojump curl dockle git go grep hadolint htop hugo iftop \
             jq lazydocker md5sha1sum molecule monero nmap openssh openssl python3 sshrc \
             inetutils starship trivy vagrant vim visidata watch wget xmrig xz zstd zsh \
             zsh-autosuggestions zsh-syntax-highlighting

# install packages from homebrew cask
brew install caskroom/cask/brew-cask
brew cask install brave-browser bitwarden docker element signal spotify  \
                 standard-notes virtualbox visual-studio-code vlc wireshark --force

# cleanup
brew cleanup

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add .zshrc configurations
echo '''alias iftop='sudo iftop -c ~/.iftoprc'
export PATH="/usr/local/sbin:$PATH"
eval "$(starship init zsh)"''' | tee -a ~/.zshrc

# Enable zsh plugins
sed "s/plugins=*/plugins=(git autojump brew vagrant zsh-autosuggestions zsh-syntax-highlighting)/" ~/.zshrc
source ~/.zshrc

# Install Pip packages
pip3 install dpkt lxml virtualenv

# Setup iftoprc
cp .iftoprc ~/.iftoprc

# Setup git
cp gitconfig ~/.gitconfig