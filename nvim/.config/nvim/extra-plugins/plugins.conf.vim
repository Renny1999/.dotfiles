"""" Plugin specific settings """"
" FZF
" invoke fzf by ctrl P
if $TTROOT != ""
  nmap <C-P> :FZF $TIMESTEN_ROOT<CR>
else
  nmap <C-P> :FZF<CR>
endif

let g:fzf_layout = {'down' : '25%'}
let g:fzf_buffers_jump = 1

" Tagbar
nnoremap <leader>t :TagbarToggle<CR>
