require("renny.lsp")
require("renny.indent_blankline")
require("renny.comment")

require'nvim-treesitter.configs'.setup { highlight = { enable = true }}

vim.api.nvim_set_keymap('n', '<C-_>', 'gcc', {noremap = true})
