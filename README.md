# illu.vim

This is my **neovim** configuration. Importantly, this config will not work
with vim because it includes plugins that rely on asnyc functionality, for
instance.

## Installation

1. Clone repo into `~/.config/nvim` and install `vim-plug`:

```
mkdir ~/.config/nvim; git clone https://github.com/illucionist/illu.vim ~/.config/nvim/illu.vim; ln -s ~/.config/nvim/illu.vim/init.vim ~/.config/nvim/init.vim; ln -s ~/.config/nvim/illu.vim/coc-settings.json ~/.config/nvim/coc-settings.json; curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. Install `fzf` for fuzzy file finding:

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf; ~/.fzf/install
```

3. Install Meslo font with airline and nerd fonts support and rebuild font cache:

```
mkdir ~/.fonts; wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Meslo.zip -O ~/meslo.zip; unzip ~/meslo.zip -d ~/.fonts; rm ~/meslo.zip; fc-cache -f -v; gsettings set org.gnome.desktop.interface monospace-font-name 'MesloLGM NF 11'
```

4. Install ripgrep, which is used in fzf to filter lists

If you are on an debian-based system:

```
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.1/ripgrep_11.0.1_amd64.deb; sudo dpkg -i ripgrep_11.0.1_amd64.deb
```

5. Install yarn, which is used to install `coc.vim`-plugins:

If you are on a debian-based system:

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -; echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list; sudo apt-get update && sudo apt-get install yarn
```

6. Make sure `nodejs` is installed, which `coc.vim` relies on:

```
curl -sL install-node.now.sh/lts | bash
```

7. Make sure `ctags` is installed for `coc.vim` and `vim-gutentags`:

If you are on a debian-based system:

```
sudo apt-get install exuberant-ctags
```

8. Install ctags for javascript:

```
git clone https://github.com/romainl/ctags-patterns-for-javascript.git ~/ctags-patterns-for-javascript; ln -s ~/ctags-patterns-for-javascript/ctagsrc ~/.ctags
```

9. Install latex for tex support:

If you are on a debian-based system:

```
sudo apt-get install texlive latexmk
```

10. Restart your terminal, open nvim, and type (including \ = leader key):

```
\pi
```

This will install plugins and do all the work.

Exit nvim and start again, and voila!
That should be all!
