function! GetCommentChr() abort
    let ext = expand("%:e")

    if ext == "py" || ext == "rb" || ext == "js" || ext == "sh" 
        return "#"
    elseif ext == "java" || ext == "go"
        return "//"
    else
	return '"'
    endif
endfunction

function! InsertComment(commentchr) abort
    let comment = input("Your comment: ")
    let referenceurl = input("Reference URL: ")
    execute ":normal i" . a:commentchr . "----TODO----"
    execute ":normal o" . a:commentchr . comment
    execute ":normal o" . a:commentchr . referenceurl
endfunction

function! TodoComment() abort
    let commentchr = GetCommentChr()
    echo InsertComment(commentchr)
endfunction