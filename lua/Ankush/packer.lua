-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'mfussenegger/nvim-jdtls'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  'christoomey/vim-tmux-navigator',
	  lazy=false
  }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ":TSUpdate",
  }
  use({ 'rose-pine/neovim', as = 'rose-pine',config=function()
	  vim.cmd('colorscheme rose-pine') end
  })
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('theprimeagen/harpoon')
  use 'simrat39/rust-tools.nvim'
  use 'mfussenegger/nvim-jdtls'


  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}





end)
