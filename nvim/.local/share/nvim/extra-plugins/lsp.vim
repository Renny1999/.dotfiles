
" do not select any completion option automatically
set completeopt=menu,menuone,noselect

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap <C-Space> :lua vim.lsp.buf.hover()<CR>
