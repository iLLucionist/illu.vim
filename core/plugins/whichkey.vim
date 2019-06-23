let g:mapleader="\\"
let g:maplocalleader=","

call which_key#register('\', "g:which_key_map")
nnoremap <silent> <Space> :<c-u>WhichKey '\'<CR>

let g:which_key_map = {}
let g:which_key_map = {
            \ 'name': 'IlluVimRoot' ,
            \ 'q': ['q', 'quit-or-close'],
            \ 't' : {
                \ 'name' : '+Tabs',
                \ 'n' : ['tabnew', 'new-tab'],
                \ 'c' : ['tabclose', 'close-tab'],
                \},
            \ 'g' : {
                \ 'name' : '+Git',
                \ 's' : ['Gstatus', 'git-status'],
                \ 'c' : ['Gcommit', 'git-commit'],
                \ 'v' : ['GV', 'git-browse'],
                \},
            \ 'w' : {
                \ 'name' : '+Windows',
                \ 'j' : ['split', 'window-below'],
                \ 'l' : ['vsplit', 'window-right'],
                \},
            \ 'b' : {
                \ 'name' : '+Buffer',
                \ 'w' : ['w', 'write-buffer'],
                \ 'c' : ['bd', 'buffer-close'],
                \ 'p' : ['bh', 'buffer-previous'],
                \ 'n' : ['bl', 'buffer-next'],
                \},
            \}

