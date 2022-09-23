local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then return end

lspsaga.init_lsp_saga()


local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', 'gR', ':Lspsaga lsp_finder<CR>', opts)
