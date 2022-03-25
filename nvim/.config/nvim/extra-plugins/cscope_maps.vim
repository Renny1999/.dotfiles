if has("cscope")
    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
        cs add $TIMESTEN_ROOT/cscope.out
    " else add the database pointed to by environment variable
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
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
    nnoremap <C-\>s :cs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>s :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>s :cs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>s :cs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>s :cs find f <C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-\>s :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
    nnoremap <C-\>s :cs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-SPACE>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-SPACE>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-SPACE>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-SPACE>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-SPACE>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-SPACE>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-SPACE>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-SPACE>d :scs find d <C-R>=expand("<cword>")<CR><CR>
endif
