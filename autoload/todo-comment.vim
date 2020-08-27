function! TodoComment() abort
    let comment = input("Your comment: ")
    let referenceurl = input("Reference URL: ")
    execute ":normal i" . "####TODO####"
    execute ":normal o" . comment
    execute ":normal o" . referenceurl

endfunction