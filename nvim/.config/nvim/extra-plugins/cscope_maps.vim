if has("cscope")
    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    " set cscopetag
    " set cscopequickfix=s-

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=1

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    " else add the database pointed to by environment variable
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    else
        function! LoadCscope()
          let db = findfile("cscope.out", ".;")
          if (!empty(db))
            let path = strpart(db, 0, match(db, "/cscope.out$"))
            set nocscopeverbose " suppress 'duplicate connection' error
            " set cscopeverbose
            exe "cs add " . db . " " . path
            set cscopeverbose
          " else add the database pointed to by environment variable
          elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
          endif
        endfunction
        au BufEnter /* call LoadCscope()
    endif

    " show msg when any other cscope db added
    set cscopeverbose


    " keymappings
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    " open in quickfix
    " nnoremap gr :cs find s <C-R>=expand("<cword>")<CR><CR>:bd<CR>:cwindow<CR>
    nnoremap gr :cs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif
