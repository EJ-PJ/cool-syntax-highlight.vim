" catch mismatched braces and parens ripped from c.vim and changed to let
" braces be embedded in parens
"---------------------------------------------------------------------------------------------------
"Delimeters region
syn match        clDelimiter    '[()\.\[\],;{}]'
"---------------------------------------------------------------------------------------------------
" all lowercase words are variables or methods
syn match       clIdenitifier	"\<\a\w*"
"---------------------------------------------------------------------------------------------------
" anything after a : is a type
syn match       clType		":\s*\S*"
"---------------------------------------------------------------------------------------------------
" anything before : is a Identifier
" synn match       clType	"\s*\w*:"
"---------------------------------------------------------------------------------------------------
"Operators region
syn match       clOperator	"[\+\-\~!\*/%<>=&\^|?:]"
"---------------------------------------------------------------------------------------------------
" Function region identifier	
syn match       clFunction	'\v<%(\h|\$)%(\w|\$)*>\ze\_s*\(\_.{-}\)'
"---------------------------------------------------------------------------------------------------
" C style integers ripped from c.vim
syn match       clNumber	display transparent "\<\d\|\.\d" contains=clNumber
syn match       clNumber	display contained "\d\+\(u\=l\{0,2}\|ll\=u\)\>"
"---------------------------------------------------------------------------------------------------
" C style strings ripped from c.vim
syn region      clString	start=+L\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end='$' 
"---------------------------------------------------------------------------------------------------
syn keyword     clTodo		TODO FIXME contained
syn keyword	clTodoNote	NOTE contained
syn keyword	clTodoWarn	XXX NB contained
"---------------------------------------------------------------------------------------------------
" vhdl style comment
syn match clComment "--.*$"	contains=clTodo
"---------------------------------------------------------------------------------------------------
"comment region
syn region   clComment		start="(\*" end="\*)" contains=clComment, clTodo, clTodoNote, clTodoWarn
"---------------------------------------------------------------------------------------------------
