if exists('g:loaded_todo-comment')
  finish
endif
let g:loaded_todo-comment = 1

command! TodoComment call TodoComment()