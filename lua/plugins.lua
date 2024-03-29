local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer is not installed, please visit: https://github.com/wbthomason/packer.nvim#the-startup-function")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- file icons
  use 'nvim-tree/nvim-web-devicons' -- file icons
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip' -- snippets
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode like pictograms
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-path' -- LSP for path
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- requires npm install -g @fsouza/prettierd, use neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'moll/vim-bbye'
  use 'norcalli/nvim-colorizer.lua' -- show colors on hex colors

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- for git blame and browse

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'terrortylor/nvim-comment'
  -- use 'mhinz/vim-startify'
  -- use 'yashguptaz/calvera-dark.nvim'
  use 'RRethy/vim-illuminate'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'phaazon/hop.nvim'
  use 'ellisonleao/glow.nvim'
  use 'folke/trouble.nvim'
  use 'folke/todo-comments.nvim'
  use 'nvim-treesitter/nvim-treesitter-context'
  -- use 'folke/which-key.nvim'
  use 'gbprod/phpactor.nvim'
  use 'akinsho/toggleterm.nvim'
  -- emmet
  use 'mattn/emmet-vim'
  -- Add grammar support
  use 'rhysd/vim-grammarous'
  use 'simrat39/symbols-outline.nvim'
  -- PlantUML Viewer
  use 'tyru/open-browser.vim'
  use 'aklt/plantuml-syntax'
  use 'weirongxu/plantuml-previewer.vim'
  use 'scrooloose/vim-slumlord'

  -- twig
  use 'nelsyeung/twig.vim'

  -- catppuccin colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }

  -- startup dashboards
  use 'glepnir/dashboard-nvim'
end)
