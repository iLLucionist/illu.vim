" Basic settings
set nocompatible
set modelines=0
filetype plugin indent on
set nu
set ruler
syntax on
set showmatch
set mouse=a
set cursorline
set wildmenu
set noswapfile
set timeoutlen=500
set signcolumn=yes
set updatetime=300
" set completefunc=emoji#complete
" set completeopt=longest,menu
" set completeopt-=preview
set backspace=indent,eol,start


" Necessary for hot reloading in node and bundlers
set backupcopy=yes
set nobackup
set nowritebackup


" Tabs and backspace
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set backspace=2
set textwidth=80


" Search
set ignorecase " Search ignoring case
set smartcase " Keep case when searching with *
set infercase " Adjust case in insert completion mode
set incsearch " Incremental search
set hlsearch " Highlight search results
set wrapscan " Searches wrap around the end o the file
set showmatch " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1 " Tenths of a second to show matching paren
set cpoptions-=m " showmatch will wait 0.5s or until a char is typed
set wildignore+=*.so,*~,*/.git/*,*/.DS_Store,*/tmp/*


set t_Co=256
" Apparently, termguicolors does not work well with urxvt, which messes up
" the colors. It seems that turning off termguicolors also does not
" negatively impact xfce4-terminal
" set termguicolors
set hlsearch
color dracula
" color sidonia


" Column highlighting
set colorcolumn=80


" Scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1


" Windows
let g:choosewin_overlay_enable = 1


" Prevent auto comment continuation on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


" Set encoding to UTF8
if has('vim_starting')
    set encoding=UTF-8
    scriptencoding UTF-8
endif


if has('folding')
	set foldenable
	set foldmethod=syntax
	set foldlevelstart=99
	set foldtext=FoldText()
endif

" Improved Vim fold-text
" See: http://www.gregsexton.org/2011/03/improving-the-text-displayed-in-a-fold/
function! FoldText()
	" Get first non-blank line
	let fs = v:foldstart
	while getline(fs) =~? '^\s*$' | let fs = nextnonblank(fs + 1)
	endwhile
	if fs > v:foldend
		let line = getline(v:foldstart)
	else
		let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
	endif

	let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
	let foldSize = 1 + v:foldend - v:foldstart
	let foldSizeStr = ' ' . foldSize . ' lines '
	let foldLevelStr = repeat('+--', v:foldlevel)
	let lineCount = line('$')
	let foldPercentage = printf('[%.1f', (foldSize*1.0)/lineCount*100) . '%] '
	let expansionString = repeat('.', w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
	return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endfunction
