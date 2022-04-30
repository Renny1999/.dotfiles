require'nvim-treesitter.configs'.setup{
  highlight = {
    enable = true,
    custom_captures = {
    },
  }
}

-- These are for solarized-dark and C
require'nvim-treesitter.highlight'.set_custom_captures{
  ["type"] = "TSType",
  ["punctuation.delimiter"] = "TSString",
  ["property"] = "",
  ["parameter"] = "",
}
