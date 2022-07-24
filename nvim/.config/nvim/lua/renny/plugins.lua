-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lualine (prettier vim status bar)
  use 'nvim-lualine/lualine.nvim'

  -- colorschemes
  use 'morhetz/gruvbox'
  use 'ishan9299/nvim-solarized-lua'

  -- real-time markdown
  use 'iamcco/markdown-preview.vim'

  -- fzf (requirs fzf to be installed)
  -- use {
  --   'junegunn/fzf',
  --   run = : { -> fzf#install() } }
  -- }

  -- tagbar 
  use 'preservim/tagbar'

  -- tmux pane switching integration
  use 'christoomey/vim-tmux-navigator'

  -- TreeSitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/playground'

  -- Draws vertical lines for indents
  use 'lukas-reineke/indent-blankline.nvim'

  -- Commenting plugin
  use 'numToStr/Comment.nvim'

  -- LSP stuff
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
end)
