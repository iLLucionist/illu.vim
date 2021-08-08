syn keyword QEntityKeyword entity option value field identifier mapping include inherits aggregate primary context plural
syn keyword QType numeric character list story
syn match QEntityComment '^#.\+\|.\+#.\+'
syn match QEntityVariable '\$\w\+'
syn match QEntityVariable '\w\+\.\w\+'
syn match QEntityTag '\s\+\w\+\:'
syn match QArgument '\w\+\s\ze='
syn match QOperator '='
syn match QString '\"\w.\+\"'
syn match QString '\'\w.\+\''
syn keyword QBoolean yes no
" syn match QIdentifier '\w\+\s' contains=QEntityKeyword
" syn match QIdentifier '\([^\s]+\)' contains=QEntityKeyword
" syn match QIdentifier '\w\+\s\ze\s'

hi link QEntityKeyword Keyword
hi link QBoolean Boolean
hi link QEntityVariable Boolean
hi link QEntityTag tag
hi link QArgument Tag
hi link QEntityComment Comment
hi link QOperator Operator
hi link QIdentifier Comment
hi link QString String
hi link QType Type
" " hi link QEntityKeyword keyword



" hi QEntityKeyword ctermfg=darkgreen
