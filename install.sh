#!/bin/bash
set -e

sudo -v

# Brew
echo "INSTALAR BREW"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "📗: brew instalado com sucesso"

# Apps
echo "INSTALANDO OS PROGRAMAS"
brew install --cask brave-browser
echo "📗: brave instalado com sucesso."
brew install --cask visual-studio-code
echo "📗: visual studio code instalado com sucesso."
brew install --cask tunnelblick
echo "📗: tunnelblick instalado com sucesso."
brew install --cask enpass
echo "📗: enpass instalado com sucesso."
brew install --cask gitkraken
echo "📗: gitkraken instalado com sucesso."
brew install --cask iterm2
echo "📗: iterm2 instalado com sucesso."
brew install --cask discord
echo "📗: discord instalado com sucesso."
brew install --cask android-studio
echo "📗: android-studio instalado com sucesso."
brew install --cask spectaclep
echo "📗: spectaclep instalado com sucesso."
brew install --cask postman
echo "📗: postman instalado com sucesso."
brew install --cask spotify
echo "📗: spotify instalado com sucesso."
brew install --cask react-native-debugger
echo "📗: react-native-debugger instalado com sucesso."

# Fonts
echo "INSTALANDO FONTES"
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
echo "📗: font-jetbrains-mono instalado com sucesso"

# Libs
echo "INSTALANDO LIBS DE DESENVOLVIMENTO"
brew install cocoapods
echo "📗: cocoapods instalado com sucesso."
brew install node
echo "📗: node instalado com sucesso."

# ZSH
# @link https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
echo "INSTALANDO ZSH E PLUGINS"
# install
brew install zsh
echo "📗: zsh instalado com sucesso."
# set zsh with default 
chsh -s /usr/local/bin/zsh
echo "📗: definido zsh com padrão."
# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "📗: oh my zsh instalado com sucesso."

# PLUGINS ZSH
# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
echo "📗: zsh-completions instalado com sucesso."

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "📗: zsh-syntax-highlighting instalado com sucesso."

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "📗: zsh-autosuggestions instalado com sucesso."

# JAVA
# @link https://github.com/AdoptOpenJDK/homebrew-openjdk
echo "INSTALADO JAVA"
brew tap AdoptOpenJDK/openjdk
brew install --cask adoptopenjdk
echo "📗: java mais recente instalado com sucesso."
brew install --cask adoptopenjdk8
echo "📗: java 1.8 instalado com sucesso."

# ANDROID
# permissins licence
echo "ANDROID LICENCE"
sdkmanager --licenses
echo "📗: aceitado licenças do android."
