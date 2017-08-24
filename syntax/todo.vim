" Vim syntax file
" Language: Todo Text File
" Maintainer: Adrien Giboire
" Latest Revision: 24 August 2017

if exists("b:current_syntax")
  finish
endif

syntax match todoContent      '.+'
syntax match todoTodo         '^t\s.\+'           contains=todoContent
syntax match todoDone         '^d\s.\+'           contains=todoContent
syntax match todoInProgress   '^i\s.\+'           contains=todoContent
syntax match todoProject      '^[^[:blank:]]\+:$' contains=NONE

let b:current_syntax = "todo"

highlight default link todoTodo       Constant
highlight default link todoDone       Special
highlight default link todoInProgress Statement
highlight default link todoProject    PreProc
