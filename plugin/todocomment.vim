if exists('g:loaded_todo_comment')
  finish
endif
let g:loaded_todo_comment = 1

command! TodoComment call todocomment#TodoComment()