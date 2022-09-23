local status, packer = pcall(require, 'packer')

if (not status) then
	print('Packer is not installed')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	}
	use 'nvim-lualine/lualine.nvim' -- Statusline
	use 'onsails/lspkind-nvim' -- vscode-like pictograms
	use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/nvim-cmp' -- Completion
	use 'neovim/nvim-lspconfig' -- LSP
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
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/prettier.nvim'
	use 'ayu-theme/ayu-vim'
	use 'mattn/emmet-vim'
	use {
		"windwp/nvim-autopairs",
	}
	use 'windwp/nvim-ts-autotag'
	use 'nvim-lua/plenary.nvim' -- Common utilities
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
	use 'glepnir/lspsaga.nvim'
	use 'tpope/vim-fugitive'
end)
