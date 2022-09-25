#!/bin/bash

source utils.sh

# Set zsh as default shell
chsh -s /bin/zsh

# Install Oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

_ln "$(pwd)/tools/ohmyzsh/.zshrc" "${HOME}/.zshrc"
_ln "$(pwd)/tools/ohmyzsh/.p10k.zsh" "${HOME}/.p10k.zsh"
