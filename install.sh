#!/bin/bash

echo -e "\e[1m\e[94m---===((( \e[97mInstalling 'illu.vim' neovim config\e[94m)))===---"
echo -e "\e[0m"

mkdir ~/viminstall

echo -e "\e[1m\e[94m--> \e[97m(1)  Installing neovim config repository 'illu.vim'"
echo -e "\e[0m"

echo -e "\e[1m\e[97m    [GIT] \e[0m\e[37mPulling github repo 'iLLucionist/illu.vim'"
echo -e "\e[0m"

mkdir ~/.config/nvim; 
git clone https://github.com/illucionist/illu.vim ~/.config/nvim/illu.vim

echo -e "\e[1m\e[97m    [LN] \e[0m\e[37mLinking 'init.vim'"
echo -e "\e[0m"

ln -s ~/.config/nvim/illu.vim/init.vim ~/.config/nvim/init.vim

echo -e "\e[1m\e[97m    [LN] \e[0m\e[37mLinking 'coc-settings.json'"
echo -e "\e[0m"

ln -s ~/.config/nvim/illu.vim/coc-settings.json ~/.config/nvim/coc-settings.json

echo -e "\e[1m\e[97m    [CURL] \e[0m\e[37mInstalling 'vim-plug'"
echo -e "\e[0m"

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "\e[1m\e[94m--> \e[97m(2)  Installing 'fzf'..."
echo -e "\e[0m"

echo -e "\e[1m\e[97m    [GIT] \e[0m\e[37mPulling github repo 'junegunn/fzf.git'"
echo -e "\e[0m"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

echo -e "\e[1m\e[97m    [SH] \e[0m\e[37mRunning '~/.fzf/install'"
echo -e "\e[0m"

~/.fzf/install

echo -e "\e[1m\e[94m--> \e[97m(3)  Installing pre-patched font 'meslo'..."
echo -e "\e[0m"

echo -e "\e[1m\e[97m    [SH] \e[0m\e[37mMaking dir '~/.fonts'"
echo -e "\e[0m"

mkdir ~/.fonts

echo -e "\e[1m\e[97m    [WGET] \e[0m\e[37mDownloading 'Meslo.zip'"
echo -e "\e[0m"

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Meslo.zip -O ~/meslo.zip

echo -e "\e[1m\e[97m    [UNZIP] \e[0m\e[37mExtracting 'Meslo.zip' to '~/.fonts'"
echo -e "\e[0m"

unzip ~/meslo.zip -d ~/.fonts
rm ~/meslo.zip

echo -e "\e[1m\e[97m    [FC-CACHE] \e[0m\e[37mUpdating font cache (this may take a while)"
echo -e "\e[0m"

fc-cache -f

echo -e "\e[1m\e[97m    [GCONF] \e[0m\e[37mSetting gnome monospace font to 'MesloLGM NF 11'"
echo -e "\e[0m"

gsettings set org.gnome.desktop.interface monospace-font-name 'MesloLGM NF 11'

echo -e "\e[1m\e[94m--> \e[97m(4)  Installing 'ripgrep'... (sudo: you will be asked for root password)"
echo -e "\e[0m"

curl -LO
https://github.com/BurntSushi/ripgrep/releases/download/11.0.1/ripgrep_11.0.1_amd64.deb; sudo yes | sudo dpkg -i ripgrep_11.0.1_amd64.deb

echo -e "\e[1m\e[94m--> \e[97m(5)  Installing 'yarn'... (sudo: you will be asked for root password)\e[0m"
echo -e "\e[0m"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -; echo -e "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list; sudo apt-get update && sudo yes | sudo apt-get install yarn

echo -e "\e[1m\e[94m--> \e[97m(6)  Installing 'npm'... (sudo: you will be asked for root password)"
echo -e "\e[0m"

sudo curl -sL install-node.now.sh/lts | sudo bash

echo -e "\e[1m\e[94m--> \e[97m(7)  Installing 'exuberant-ctags'... (sudo: you will be asked for root password)"
echo -e "\e[0m"

sudo yes | sudo apt-get install exuberant-ctags

echo -e "\e[1m\e[94m--> \e[97m(8)  Installing ctags for javascript..."
echo -e "\e[0m"

git clone https://github.com/romainl/ctags-patterns-for-javascript.git ~/ctags-patterns-for-javascript; ln -s ~/ctags-patterns-for-javascript/ctagsrc ~/.ctags

echo -e "\e[1m\e[94m--> \e[97m(9)  Installing latex and latexmk..."
echo -e "\e[0m"

sudo yes | sudo apt-get install texlive latexmk

echo -e "\e[1m\e[92m--> [DONE] \e[92m INSTALLATION COMPLETE!"
echo -e "\e[1m\e[92m           \e[97m Restart terminal, run 'nvim', and hit keycombo '\pi'"
echo -e "\e[1m\e[92m           \e[97m Enjoy!"

echo -e "\e[0m"

