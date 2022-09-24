local status, packer = pcall(require, 'packer')

if (not status) then
	print('Packer is not installed')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim' -- Common utilities

	-- LSP shit ------------
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
	-- LSP boilerplate - autocompletion, formatting, etc

	use 'nvim-lualine/lualine.nvim' -- Statusline
	use 'L3MON4D3/LuaSnip'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use 'ayu-theme/ayu-vim'
	use 'mattn/emmet-vim'
	use {
		"windwp/nvim-autopairs",
	}
	use 'windwp/nvim-ts-autotag'
	use 'nvim-telescope/telescope.nvim'
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {
		"nvim-telescope/telescope-frecency.nvim",
		config = function()
			require "telescope".load_extension("frecency")
		end,
		requires = { "kkharji/sqlite.lua" }
	}
	use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
	use 'kyazdani42/nvim-tree.lua'
	use 'norcalli/nvim-colorizer.lua'
	use 'tpope/vim-fugitive'
end)
