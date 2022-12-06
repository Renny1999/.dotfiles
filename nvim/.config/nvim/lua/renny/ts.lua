--These are for solarized-dark and C

require'nvim-treesitter.configs'.setup{
  highlight = {
    enable = true,
    custom_captures = {
      ["type"] = "TSString",
      ["punctuation.delimiter"] = "TSOperator",
      ["property"] = "TSVariable",
      ["parameter"] = "TSVariable",
    }
  }
}

if vim.g.colors_name == 'solarized' 
then
    -- require"nvim-treesitter.highlight".set_custom_captures {
    --   ["type"] = "TSString",
    --   ["punctuation.delimiter"] = "TSOperator",
    --   ["property"] = "TSVariable",
    --   ["parameter"] = "TSVariable",
    -- }
end
