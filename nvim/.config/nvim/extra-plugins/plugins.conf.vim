"""" Plugin specific settings """"
" FZF

if $TTROOT != ""
  nmap <C-P> :lua require('telescope.builtin').find_files({cwd = "$TIMESTEN_ROOT"})<CR>
else
  nmap <C-P> :lua require('telescope.builtin').find_files<CR>
endif

" Tagbar
nnoremap <leader>t :TagbarToggle<CR>
