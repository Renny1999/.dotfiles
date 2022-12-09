require'nvim-treesitter.configs'.setup{
  highlight = {
    enable = true,
  }
}

-- These are for solarized-dark and C
--  set_custom_capture function is removed because I guess now treesitter 
--  is now embedded in nvim
if vim.g.colors_name == 'solarized'
then
  vim.api.nvim_exec(
  [[
    hi link @type TSString
    hi link @punctuation.delimiter TSOperator
    hi link @property TSVariable
    hi link @parameter TSVariable
  ]], false)
end
