return {
  -- the colorscheme should be available when starting Neovim
  {
    "nvim-lualine/lualine.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    dependencies = {
      "mofiqul/vscode.nvim",
    },
  },

  {
    "hrsh7th/nvim-cmp",
    -- load cmp on InsertEnter
    event = "InsertEnter",
    -- these dependencies will only be loaded when cmp loads
    -- dependencies are always lazy-loaded unless specified otherwise
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
    },
  },

  -- add telescope-fzf-native
  -- { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", 
    }
  },

  { 
    'preservim/tagbar',
    lazy=true,
  },

  { 
    'christoomey/vim-tmux-navigator',
    lazy=false,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    lazy=true,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    lazy=true,
  },

  {
    'nvim-treesitter/playground',
    lazy=true,
  },

  {
    'lukas-reineke/indent-blankline.nvim',
    lazy=true,
  },

  {
    'numToStr/Comment.nvim',
    lazy=true,
  },

  {
    'williamboman/mason.nvim',
    lazy=true,
  },
  
  {
    'williamboman/mason-lspconfig.nvim',
    lazy=true,
  },

  {
    'neovim/nvim-lspconfig',
    lazy=true,
  },

  {
    'L3MON4D3/LuaSnip',
    lazy=true,
  },

  {
    'saadparwaiz1/cmp_luasnip',
    lazy=true,
  },

  {
    'ggandor/leap.nvim',
    lazy=true,
  },

  {
    'https://github.com/Renny1999/cscope_maps.nvim.git',
    lazy=true
  },

}
