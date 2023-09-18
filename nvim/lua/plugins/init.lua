return {
 -- LSP zero
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  },

    'nvim-telescope/telescope.nvim', tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' },
    
    'mbbill/undotree',

    'rcarriga/nvim-dap-ui', -- debugger
    dependencies = {
        'mfussenegger/nvim-dap',
    },
    'mfussenegger/nvim-dap-python',
    ft = "python",
    dependencies = {
        'mfussenegger/nvim-dap',
    },

  "shaunsingh/nord.nvim", -- colorscheme
  "willothy/nvim-cokeline", -- buffer line (top)
  "nvim-lualine/lualine.nvim", -- status line (bottom)
  "goolord/alpha-nvim", -- dashboard
  "folke/trouble.nvim", -- diagnostics
  "nvim-treesitter/nvim-treesitter", -- syntax highlighting
  "lewis6991/gitsigns.nvim", -- git indicators
  "stevearc/dressing.nvim", -- UI improvements
  "folke/noice.nvim", -- UI improvements
  "lukas-reineke/indent-blankline.nvim", -- outline indentations
  "lukas-reineke/headlines.nvim", -- highlight markdown headlines
  "iamcco/markdown-preview.nvim", -- preview markdown
  "norcalli/nvim-colorizer.lua", -- highlight color values


}


















