require('leap').add_default_mappings()
-- mappings set by Leap:
vim.keymap.del({'x', 'o'}, 'x')
vim.keymap.del({'x', 'o'}, 'X')

vim.keymap.set('n', 's', function ()
  local current_window = vim.fn.win_getid()
  require('leap').leap { target_windows = { current_window } }
end)
