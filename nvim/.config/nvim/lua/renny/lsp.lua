local has_lsp, lspconfig = pcall(require, "lspconfig")

-- LSP Configuration

-- disable virtual text diagnostic messages
vim.diagnostic.config({
  virtual_text = false,
})

-- Show diagnostics for the current line in a flating window
vim.keymap.set(
  -- 'n', '<C-s>', ':lua vim.diagnostic.open_float()<CR>',
  'n', '<Leader>d', ':lua vim.diagnostic.open_float()<CR>',
  {noremap = true, silent = true}
)

vim.keymap.set(
  'n', '<Leader>n', ':lua vim.diagnostic.goto_next()<CR>',
  {noremap = true, silent = true}
)

vim.keymap.set(
  'n', '<Leader>p', ':lua vim.diagnostic.goto_prev()<CR>',
  {noremap = true, silent = true}
)

vim.keymap.set(
  'n', '<C-q>', ':lua vim.diagnostic.setloclist()<CR>',
  {noremap = true, silent = true}
)

-- Mappings.
--
-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr}

  vim.keymap.set('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', bufopts)
  vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', bufopts)
  vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', bufopts)
  vim.keymap.set('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', bufopts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<C-space>', vim.lsp.buf.hover, bufopts)
  -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
end

-- special one for c and cpp
local on_attach_c = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr}

  vim.keymap.set('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', bufopts)
  -- vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', bufopts)
  -- vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', bufopts)
  -- vim.keymap.set('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', bufopts)
  -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<C-space>', vim.lsp.buf.hover, bufopts)
end

-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Custom setup
require'lspconfig'.clangd.setup{on_attach = on_attach_c, capabilities=capabilities}
require'lspconfig'.rust_analyzer.setup{on_attach = on_attach, capabilities=capabilities}
require'lspconfig'.pyright.setup{on_attach = on_attach, capabilities=capabilities}

require'lspconfig'.sumneko_lua.setup({
  -- cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    }
  },

  on_attach = on_attach,
  capabilities = capabilities
})

-- vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
-- vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

local _border = "rounded"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, {
    border = _border
  }
)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    border = _border
  }
)
vim.diagnostic.config{
  float={border=_border}
}
