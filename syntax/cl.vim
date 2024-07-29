" Vim syntax file
" Language      :   COOL
" Maintainer    :   José Sosa <jrsosar01[at]gmail.com>

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

runtime! syntax_body/syntax/*.vim
runtime! syntax_body/hilink/*.vim

"var name 
let b:current_syntax = "cl"
