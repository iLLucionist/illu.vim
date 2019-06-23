call plug#begin('~/.local/share/nvim/plugged')

" COLORS
" ------
" Cyberpunk style color scheme
Plug 'dracula/vim'
" Plug 'phanviet/Sidonia'


" GIT
" ---
" Git wrapper
Plug 'tpope/vim-fugitive'
" Git commit browser
Plug 'junegunn/gv.vim'
" Git gutter
Plug 'airblade/vim-gitgutter'


" UI
" --
" Statusbar
Plug 'vim-airline/vim-airline'
" Tmux integration
Plug 'christoomey/vim-tmux-navigator'
" Discover keybindings interactively
Plug 'liuchengxu/vim-which-key'
" Fuzzy (file) finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Easily switch between windows
Plug 't9md/vim-choosewin'
" Accelerate up/down movements
Plug 'rhysd/accelerated-jk'
" Filebrowser sidebar
Plug 'scrooloose/nerdtree'
" Nice startup screen
Plug 'mhinz/vim-startify'


" EDITING
" -------
" Align columns of text
Plug 'junegunn/vim-easy-align'
" Easily (un)comment
Plug 'tpope/vim-commentary'
" Close (html) tags
Plug 'alvan/vim-closetag'
" Align table-like content
Plug 'godlygeek/tabular'
" Highlight and close brackets and parens
Plug 'jiangmiao/auto-pairs'
" Distraction free writing
Plug 'junegunn/goyo.vim'
" Expand region in visual mode
Plug 'terryma/vim-expand-region'


" FILES AND TAGS
" --------------
" Plug 'kien/ctrlp.vim'


" SYNTAX AND LANGUAGES
" --------------------
" HTML5
Plug 'othree/html5.vim'
" Javascript
Plug 'pangloss/vim-javascript'
" JSX
Plug 'mxw/vim-jsx'
" Typescript
Plug 'leafgarland/typescript-vim'
" Markdown
Plug 'gabrielelana/vim-markdown'
" Plug 'posva/vim-vue'


" INTELLISENSE AND IDE
" --------------------
" Show documentation hints
Plug 'Shougo/echodoc.vim'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" File (tag) jumping
Plug 'ludovicchabant/vim-gutentags'
" Tags sdiebar and navigation
Plug 'liuchengxu/vista.vim'


Plug 'junegunn/vim-emoji'
Plug 'ryanoasis/vim-devicons'
" Plug 'fszymanski/deoplete-emoji'

" Autocompletion
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-jedi'

" Javascript
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
" Plug 'carlitux/deoplete-ternjs'

" Linting
" For eslint specific, see:
" https://stackoverflow.com/questions/36188569/configuring-eslint-with-jsx
" Also, see:
" https://www.robinwieruch.de/react-eslint-webpack-babel/#eslintRules
" Plug 'w0rp/ale'

" File jumping
" Install ctags!
" Get JS ctags from here: https://github.com/romainl/ctags-patterns-for-javascript


call plug#end()

