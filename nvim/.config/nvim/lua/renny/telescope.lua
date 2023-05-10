local builtin = require('telescope.builtin');

require('telescope').setup{
  defaults = {
    -- layout_strategy = 'horizontal',
    -- layout_config = {'height = 0.95'},
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
        ['<c-d>'] = require('telescope.actions').delete_buffer
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
      find_files = {
        -- find_command = {
        --   "fd",
        --   "-j",
        --   "2",
        -- }
        find_command = {
          "find",
        },
        previewer = false,
      }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    fzf = {
      fuzzy = true, 
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case"
    }
  }
}
require('telescope').load_extension('fzf')


local tt = os.getenv("ADE_PRODUCT_ROOT")

if (tt ~= nil)
then
  -- print("$ADE_PRODUCT_ROOT="..tt)
  vim.keymap.set('n', '<C-p>', ":lua require('telescope.builtin').find_files({cwd='$ADE_PRODUCT_ROOT'})<CR>", {noremap=true})
  -- vim.keymap.set('n', '<C-p>', ":lua require('telescope.builtin').find_files({cwd='" .. tt .. "' })<CR>", {noremap=true})
else
  -- vim.api.nvim_set_keymap('n', '<C-p>', ":lua require('telescope.builtin').find_files({follow=true})<CR>", {noremap=true,})
  vim.keymap.set('n', '<C-p>', ":lua require('telescope.builtin').find_files()<CR>", {noremap=true})
end

vim.keymap.set('n', '<leader>f', ":lua require('telescope.builtin').find_files()<CR>", {noremap=true})

vim.keymap.set('n', '<leader>c', ":lua require('telescope.builtin').find_files({cwd='~/.config/nvim'})<CR>", {noremap=true})
vim.keymap.set('n', '<leader>C', ":lua require('telescope.builtin').colorscheme()<CR>", {noremap=true})
