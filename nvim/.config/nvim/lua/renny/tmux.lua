require("tmux").setup({
  navigagion = {
    cycle_navigation = true,
    enable_default_kneybingis = false,
  }
})

vim.keymap.set('n', '<M-l>', [[<cmd>lua require('tmux').move_right()<cr>]])
vim.keymap.set('n', '<M-h>', [[<cmd>lua require('tmux').move_left()<cr>]])
vim.keymap.set('n', '<M-j>', [[<cmd>lua require('tmux').move_bottom()<cr>]])
vim.keymap.set('n', '<M-k>', [[<cmd>lua require('tmux').move_top()<cr>]])

