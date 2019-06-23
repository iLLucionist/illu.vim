call plug#begin('~/.local/share/nvim/plugged')

" Colors
Plug 'dracula/vim'
Plug 'phanviet/Sidonia'

" Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-commentary'
" Plug 'posva/vim-vue'

" Plug 'othree/html5.vim'
" Plug 'godlygeek/tabular'
" Plug 'gabrielelana/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
" Plug 'scrooloose/nerdtree'
" Plug 'alvan/vim-closetag'
Plug 'junegunn/vim-emoji'
" Plug 'fszymanski/deoplete-emoji'

" Autocompletion
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-jedi'

" Javascript
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
" Plug 'carlitux/deoplete-ternjs'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" Linting
" For eslint specific, see:
" https://stackoverflow.com/questions/36188569/configuring-eslint-with-jsx
" Also, see:
" https://www.robinwieruch.de/react-eslint-webpack-babel/#eslintRules
" Plug 'w0rp/ale'

" File jumping
" Install ctags!
" Get JS ctags from here: https://github.com/romainl/ctags-patterns-for-javascript
" Plug 'ludovicchabant/vim-gutentags'

" Intellisense
Plug 'Shougo/echodoc.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocInstall coc-tsserver coc-html coc-css coc-prettier coc-eslint coc-pairs coc-json coc-python coc-imselect coc-highlight coc-git coc-emoji coc-lists coc-stylelint coc-yaml' }

Plug 'ryanoasis/vim-devicons'


call plug#end()

