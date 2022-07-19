"""" Plugin specific settings """"
" FZF
" invoke fzf by ctrl P
if $TTROOT != ""
  nmap <C-P> :FZF $TIMESTEN_ROOT<CR>
else
  nmap <C-P> :FZF<CR>
endif

let g:fzf_layout = {'down' : '25%'}

" Tagbar
nnoremap <leader>t :TagbarToggle<CR>
