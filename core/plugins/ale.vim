" Linting
" let g:neomake_javascript_enabled_markers = ['eslint']
let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ 'scss': ['prettier'],
            \ }
let g:ale_fixers = {
            \ 'javascript': ['eslint'],
            \ 'scss': ['prettier'],
            \ }
let g:ale_sign_error = "X"
let g:ale_sign_warning = "!"
let g:ale_fix_on_save = 1
