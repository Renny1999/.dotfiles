-- Lua neovim mappings
-- NOTE: these first two functions are just convenience functions for quickly doing maps in lua.
function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end
function nmap(shortcut, command)
  map('n', shortcut, command)
end

-- nmap("<leader>sd", ":SignifyDiff<CR>")
-- nmap("<leader>sf", ":SignifyFold<CR>")
-- nmap("<leader>sd", ":SignifyHunkDiff<CR>")
-- nmap("<leader>su", ":SignifyHunkUndo<CR>")
-- nmap("<leader>sh", ":SignifyToggleHighlight<CR>")
-- nmap("gj", "<Plug>(signify-next-hunk)")
-- nmap("gk", "<Plug>(signify-prev-hunk)")
