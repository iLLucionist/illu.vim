"Set commands executed before starting python REPL
let g:airline_powerline_fonts = 1

command PyStartTerminal :T poetry run ipython --no-autoindent
command PySendFile :TREPLSendFile
command PySendSelection :TREPLSendSelection
command PySendLine :TREPLSendLine
