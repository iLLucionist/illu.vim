" Basic mappings
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <Leader>q :q<Cr>
noremap <Leader>sv :so ~/.config/nvim/init.vim<Cr>
nnoremap <Leader>ev :e ~/.config/nvim/init.vim<Cr>
nnoremap <Leader>pi :PlugInstall<Cr>
nnoremap <Leader>ee :Explore<Cr><C-w>l


" Accelerated movement
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)


" Buffers
nnoremap <Leader>ww :w<Cr>
nnoremap <Leader>bc :bd<Cr>
nnoremap <Leader>bp :bp<Cr>
nnoremap <Leader>bn :bn<Cr>


" Windows
nnoremap <Leader>wj :split<Cr><C-w>j
nnoremap <Leader>wl :vsplit<Cr><C-w>l
nmap - <Plug>(choosewin)


" Tabs
nnoremap <Leader>tn :tabnew<Cr>
nnoremap <Leader>[ :tabprev<Cr>
nnoremap <Leader>] :tabnext<Cr>
nnoremap <Leader>tc :tabclose<Cr>


" Tags
nnoremap tt :Vista!!<Cr>
nnoremap ft :Vista finder<Cr>


" Git
nnoremap <Leader>gs :Gstatus<Cr>
nnoremap <Leader>gc :Gcommit<Cr>
nnoremap <Leader>gv :GV<Cr>


" Copy buffer
nnoremap <Leader>yb ggVGy


" Surrounds
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)
map <silent>saa <Plug>(operator-surround-append)<Plug>(textobj-multiblock-i)
map <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
map <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-multiblock-a)


" Plugin shortcuts
nnoremap <silent> <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader><Tab> :CtrlPBuffer<Cr>
nnoremap <silent> <Leader><Space> :FZF<Cr>
nnoremap <Leader>gg :Goyo<Cr>
