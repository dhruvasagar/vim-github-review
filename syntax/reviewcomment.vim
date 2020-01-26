if exists("b:current_syntax")
  finish
endif

runtime! syntax/markdown.vim
unlet b:current_syntax

let b:current_syntax = "reviewcomment"
