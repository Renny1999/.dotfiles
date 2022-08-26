call plug#begin(stdpath('data') . '/plugged')

" lualine (prettier vim status bar)
Plug 'nvim-lualine/lualine.nvim'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'ishan9299/nvim-solarized-lua'
Plug 'folke/tokyonight.nvim'

" real-time markdown
Plug 'iamcco/markdown-preview.vim'

" fzf (requirs fzf to be installed)
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }

" bufferline
Plug 'akinsho/bufferline.nvim', {'tag': 'v2.*'}

" tagbar 
Plug 'preservim/tagbar'

" tmux pane switching integration
Plug 'christoomey/vim-tmux-navigator'

" TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Draws vertical lines for indents
Plug 'lukas-reineke/indent-blankline.nvim'

" Commenting plugin
Plug 'numToStr/Comment.nvim'

""" LSP stuff
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'


call plug#end()
