setlocal formatprg=autopep8\ -

nnoremap <buffer> <LocalLeader>rs :vsplit<Cr>:PyStartTerminal<Cr><C-w>h
nnoremap <buffer> <LocalLeader>ff :PySendFile<Cr>
vnoremap <buffer> <LocalLeader>ss :<C-U>PySendSelection<Cr><Cr>
nnoremap <buffer> <LocalLeader>ll :PySendLine<Cr>
