local keymap = vim.keymap
vim.g.mapleader = ' '

-- Save and update neovim settings
keymap.set('n', '<space>u', ':w | :so % | :PackerSync<CR>')

-- Do not yank with 'x'
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Map ctrl + h,j,k,l to window switching
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-l>', '<C-w>l')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')

-- Create, resize and close windows
keymap.set('', '<leader>sh', ':Sex<Cr>')
keymap.set('', '<leader>sv', ':Vex<Cr>')
keymap.set('', '<leader>sx', '<C-w>o')
keymap.set('', '<leader>jj', '<C-w><')
keymap.set('', '<leader>kk', '<C-w>>')

-- Quit and save - looks like I don't use it(((
keymap.set('', '<leader>q', ':q<CR>')
keymap.set('', '<leader>qq', ':q!<CR>')
keymap.set('', '<leader>qa', ':qa<CR>')
keymap.set('', '<leader>w', ':w<CR>')
keymap.set('', '<leader>wa', ':wa<CR>')
keymap.set('', '<leader>wq', ':wq<CR>')
keymap.set('', '<leader>wqa', ':wqa<CR>')

-- Diagnostics and formatting
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', 'dp', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', 'dn', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>dql', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', 'dl', ':Telescope diagnostics<CR>', opts)


if vim.fn.has('macunix') then
	require('macos')
end
