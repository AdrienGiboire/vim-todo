" Vim syntax file
" Language: Todo Text File
" Maintainer: Adrien Giboire
" Latest Revision: 20 February 2018

if exists("b:current_syntax")
  finish
endif

syntax match todoAssignee     '@[^[:blank:]]\+'
syntax match todoContent      '.+'
syntax match todoTodo         '^t\s.\+'           contains=todoContent,todoAssignee
syntax match todoDone         '^d\s.\+'           contains=todoContent,todoAssignee
syntax match todoInProgress   '^i\s.\+'           contains=todoContent,todoAssignee
syntax match todoProject      '^[^[:blank:]]\+:$' contains=NONE

let b:current_syntax = "todo"

highlight default link todoTodo       Constant
highlight default link todoDone       Special
highlight default link todoInProgress Statement
highlight default link todoProject    Underlined
highlight default link todoAssignee   Identifier
