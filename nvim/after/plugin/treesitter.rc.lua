local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},
	},
	ensure_installed = {
		'lua',
		'tsx',
		'json',
		'css',
	},
	autotag = {
		enable = true,
	},
}

-- Fold with tree shitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
