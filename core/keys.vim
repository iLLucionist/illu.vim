" Basic mappings
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <Leader>q :q<Cr>
noremap <Leader>sv :so ~/.config/nvim/init.vim<Cr>
nnoremap <Leader>ev :e ~/.config/nvim/init.vim<Cr>
nnoremap <Leader>pi :PlugInstall<Cr>
nnoremap <Leader>wj :split<Cr><C-w>j
nnoremap <Leader>wl :vsplit<Cr><C-w>l
nnoremap <Leader>ee :Explore<Cr><C-w>l

nnoremap <Leader>bw :w<Cr>
nnoremap <Leader>bc :bd<Cr>
nnoremap <Leader>bp :bp<Cr>
nnoremap <Leader>bn :bn<Cr>


" Tabs
nnoremap <Leader>tn :tabnew<Cr>
nnoremap <Leader>[ :tabprev<Cr>
nnoremap <Leader>] :tabnext<Cr>
nnoremap <Leader>tc :tabclose<Cr>


" Git
nnoremap <Leader>gs :Gstatus<Cr>
nnoremap <Leader>gc :Gcommit<Cr>
nnoremap <Leader>gv :GV<Cr>


" Copy buffer
nnoremap <Leader>yb ggVGy


" Plugin shortcuts
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader><Tab> :CtrlPBuffer<Cr>
nnoremap <silent> <Leader><Space> :FZF<Cr>

" Keymap
