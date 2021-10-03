if &compatible
    set nocompatible
endif

let $VIMPATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')

function! s:source_file(path) abort
    let abspath = resolve(expand($VIMPATH.'/illu.vim/core/'. a:path))
    execute 'source' fnameescape(abspath)
    return
endfunction

" Load plugins
call s:source_file('plugins.vim')
call s:source_file('basic.vim')
call s:source_file('keys.vim')

call s:source_file('plugins/vim-airline.vim')
call s:source_file('plugins/ctrlp.vim')
" call s:source_file('plugins/deoplete.vim')
call s:source_file('plugins/gutentags.vim')
call s:source_file('plugins/tern.vim')
call s:source_file('plugins/ale.vim')
call s:source_file('plugins/gitgutter.vim')
call s:source_file('plugins/coc.vim')
call s:source_file('plugins/echodoc.vim')
call s:source_file('plugins/fzf.vim')
call s:source_file('plugins/vista.vim')
" call s:source_file('plugins/whichkey.vim')
call s:source_file('plugins/vimtex.vim')
call s:source_file('plugins/markdown.vim')
call s:source_file('plugins/nvimr.vim')
call s:source_file('plugins/neoterm.vim')

autocmd FileType r setlocal shiftwidth=2 softtabstop=2 tabstop=2
