local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local remap = vim.keymap.set

telescope.setup {
	defaults = {
		prompt_prefix = "$ ",
		layout_strategies = "vertical",
		layout_config = {
			preview_cutoff = 12
		}
	},
	pickers = {
		find_files = {
			theme = "ivy",
			path_display = { 'smart' },
			previewer = false,
		},
		oldfiles = {
			theme = "ivy",
			path_display = { 'smart' },
			previewer = false,
		},
		grep_string = {
			theme = "ivy"
		},
		live_grep = {
			theme = "ivy"
		}
	}
}

telescope.load_extension('fzf')

remap('n', '<leader>rg', ':Telescope live_grep<CR>')
remap('n', '<leader>gg', ':Telescope grep_string<CR>')
remap('n', '<leader>p', ':Telescope find_files<CR>')
remap('n', '<leader>h', ':Telescope oldfiles<CR>')
