local builtin = require('telescope.builtin');

require('telescope').setup{
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {'height = 0.95'},
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
      },
    },
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

local tt = os.getenv("TIMESTEN_ROOT")

if (tt ~= '')
then
  vim.api.nvim_buf_set_keymap(0, 'n', '<C-p>', ":lua require('telescope.builtin').find_files({cwd='" .. tt .. "'})<CR>", {})
else
  vim.api.nvim_buf_set_keymap(0, 'n', '<C-p>', ":lua require('telescope.builtin').find_files()<CR>", {})
end
