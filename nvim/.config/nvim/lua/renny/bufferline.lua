require("bufferline").setup{
  options = {
    mode = "buffers",
    numbers = "ordinal",
    buffer_close_icon = '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    color_icons = false,
    show_buffer_icons = false,
  }
}

local options = {noremap=true, silent= true}
vim.api.nvim_set_keymap('n', '<Leader>l', ':BufferLineCycleNext<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>h', ':BufferLineCyclePrev<CR>', options)

vim.api.nvim_set_keymap('n', '<Leader>1', ':BufferLineGoToBuffer 1<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>2', ':BufferLineGoToBuffer 2<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>3', ':BufferLineGoToBuffer 3<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>4', ':BufferLineGoToBuffer 4<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>5', ':BufferLineGoToBuffer 5<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>6', ':BufferLineGoToBuffer 6<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>7', ':BufferLineGoToBuffer 7<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>8', ':BufferLineGoToBuffer 8<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>9', ':BufferLineGoToBuffer 9<CR>', options)
vim.api.nvim_set_keymap('n', '<Leader>$', ':BufferLineGoToBuffer -1<CR>', options)
