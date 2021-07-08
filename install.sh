#!/bin/bash
set -e

sudo -v

# Brew
echo "⬇ INSTALAR BREW"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "📗: brew instalado com sucesso"

# Apps
echo "⬇ INSTALANDO OS PROGRAMAS"
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
brew install --cask spectacle
echo "📗: spectaclep instalado com sucesso."
brew install --cask postman
echo "📗: postman instalado com sucesso."
brew install --cask spotify
echo "📗: spotify instalado com sucesso."
brew install --cask react-native-debugger
echo "📗: react-native-debugger instalado com sucesso."

# Fonts
echo "⬇ INSTALANDO FONTES"
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
echo "📗: font-jetbrains-mono instalado com sucesso"

# Libs
echo "⬇ INSTALANDO LIBS DE DESENVOLVIMENTO"
brew install cocoapods
echo "📗: cocoapods instalado com sucesso."
brew install node
echo "📗: node instalado com sucesso."
curl -o- -L https://yarnpkg.com/install.sh | bash
echo "📗: yarn instalado com sucesso."

# ZSH
# @link https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
echo "⬇ INSTALANDO ZSH E PLUGINS"
# install
brew install zsh
echo "📗: zsh instalado com sucesso."
# set zsh with default 
chsh -s /usr/local/bin/zsh
echo "📗: definido zsh com padrão."

# install oh my zsh
DIR_OH_MY_ZSH=~/.oh-my-zsh
if [ -d "$DIR_OH_MY_ZSH" ]; then
  echo "📙: oh my zsh já instalado"
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "📗: oh my zsh instalado com sucesso."
fi

# theme spaceship 
DIR_SPACESHIP="${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/themes/spaceship-prompt"
if [ -d "$DIR_SPACESHIP" ]; then
  echo "📙: theme spaceship já instalado"
else
  git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  ln -sf "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
  echo "📗: theme spaceship instalado com sucesso."
fi

# PLUGINS ZSH
ZSH_PLUGINS="${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins"

# zsh-completions
ZSH_COMPLETIONS="${ZSH_PLUGINS}/zsh-completions"
if [ -d "$ZSH_COMPLETIONS" ]; then
  echo "📙: zsh-completions já instalado"
else
  git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
  echo "📗: zsh-completions instalado com sucesso."
fi


# zsh-syntax-highlighting
ZSH_HIGHLIGHTING="${ZSH_PLUGINS}/zsh-syntax-highlighting"
if [ -d "$ZSH_COMPLETIONS" ]; then
  echo "📙: zsh-syntax-highlighting já instalado"
else
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  echo "📗: zsh-syntax-highlighting instalado com sucesso."
fi


# zsh-autosuggestions
ZSH_AUTOSUGGESTIONS="${ZSH_PLUGINS}/zsh-syntax-highlighting"
if [ -d "$ZSH_AUTOSUGGESTIONS" ]; then
  echo "📙: zsh-autosuggestions já instalado"
else
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  echo "📗: zsh-autosuggestions instalado com sucesso."
fi


# JAVA
# @link https://github.com/AdoptOpenJDK/homebrew-openjdk
echo
echo
echo "⬇ INSTALADO JAVA"
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
