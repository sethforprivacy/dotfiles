#!/bin/bash

# Install packages
sudo apt install ansible ansible-lint autojump curl git grep htop hugo \
             jq nmap python3 python3-pip tor vagrant vim watch wget zsh

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install OhMyZSH plugins
curl -fsSL https://starship.rs/install.sh | bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Add .zshrc configurations
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

# Enable zsh plugins
sed 's/\(^plugins=([^)]*\)/\1 autojump zsh-autosuggestions zsh-syntax-highlighting/' ~/.zshrc

# Install Pip packages
pip3 install dpkt lxml virtualenv

# Setup git
cp gitconfig ~/.gitconfig

# Setup Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip
mkdir -p ~/.local/share/fonts/
unzip FiraCode.zip -d ~/.local/share/fonts/
fc-cache -fv

# Setup Starship
mkdir ~/.config
cp starship.toml ~/.config/starship.toml

source ~/.zshrc
