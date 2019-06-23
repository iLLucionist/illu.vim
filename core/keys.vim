" Basic mappings
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <Leader>q :q<Cr>
nnoremap <Leader>w :w<Cr>
nnoremap <Leader>sv :so ~/.config/nvim/init.vim<Cr>
nnoremap <Leader>ev :e ~/.config/nvim/init.vim<Cr>
nnoremap <Leader>pi :PlugInstall<Cr>
nnoremap <Leader>wj :split<Cr><C-w>j
nnoremap <Leader>wl :vsplit<Cr><C-w>l
nnoremap <Leader>ee :Explore<Cr><C-w>l


" Tabs
nnoremap <Leader>tn :tabnew<Cr>
nnoremap <Leader>[ :tabprev<Cr>
nnoremap <Leader>] :tabnext<Cr>
nnoremap <Leader>tc :tabclose<Cr>


" Git
nnoremap <Leader>gs :Gstatus<Cr>
nnoremap <Leader>gc :Gcommit<Cr>


" Copy buffer
nnoremap <Leader>yb ggVGy


" Plugin shortcuts
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader><Tab> :CtrlPBuffer<Cr>
