local status, tree = pcall(require, 'nvim-tree')
if (not status) then return end

local remap = vim.keymap.set

tree.setup()

remap('n', '<leader><leader>', ':NvimTreeToggle<CR>')
remap('n', '<C-n>', ':NvimTreeFindFile<CR>')
