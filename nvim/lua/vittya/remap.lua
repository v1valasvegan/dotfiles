local keymap = vim.keymap

-- Save and update neovim settings
keymap.set("n", "<leader>w", ":w | :so % | :PackerSync<CR>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Map ctrl + h,j,k,l to window switching
keymap.set("", "<C-h>", "<C-w>h")
keymap.set("", "<C-l>", "<C-w>l")
keymap.set("", "<C-k>", "<C-w>k")
keymap.set("", "<C-j>", "<C-w>j")

-- Create, resize and close windows
keymap.set("", "<leader>sh", "<C-w>S")
keymap.set("", "<leader>sv", "<C-w>v")
keymap.set("", "<leader>sx", "<C-w>o")
keymap.set("", "<C-Right>", "<C-w><")
keymap.set("", "<C-Left>", "<C-w>>")

-- Diagnostics and formatting
local opts = { noremap = true, silent = true }
keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
keymap.set("n", "dp", vim.diagnostic.goto_prev, opts)
keymap.set("n", "dn", vim.diagnostic.goto_next, opts)
keymap.set("n", "<leader>dql", vim.diagnostic.setloclist, opts)
keymap.set("n", "dl", ":Telescope diagnostics<CR>", opts)

-- Qlist
keymap.set("n", "<leader>cn", ":cnext<CR>")
keymap.set("n", "<leader>cp", ":cprev<CR>")

--nvim-tree
keymap.set("", "<leader><leader>", ":NvimTreeToggle <CR>")
keymap.set("n", "<C-n>", ":NvimTreeFindFile <CR>")

-- move and add lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "[<leader>", ':<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "\'[-1"<CR>')
keymap.set("n", "]<leader>", ':<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "\']+1"<CR>')

-- use telescope picker to display references instead of native lsp qlist
keymap.set("n", "gR", ":Telescope lsp_references<CR>")
keymap.set("n", "gr", ":Telescope lsp_references<CR>")

-- misc from ThePrimeagen --

--keep cursor position
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
-- keymap.set("n", "n", "Nzzzv")
-- keymap.set("n", "N", "Nzzzv")

-- copy/paste
keymap.set("x", "<leader>p", '"_dP') -- keep buffer when pasting
keymap.set("n", "<leader>y", '"+y') -- copy to system clipboard
keymap.set("v", "<leader>y", '"+y') -- copy to system clipboard
keymap.set("n", "<leader>Y", '"+Y') -- copy to system clipboard
keymap.set("n", "<leader>d", '"+d') -- cut to system clipboard
keymap.set("v", "<leader>d", '"+d') -- cut to system clipboard

-- qlist/loclist
keymap.set("n", "<leader>cp", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>cn", "<cmd>cnext<CR>zz")
keymap.set("n", "<leader>lp", "<cmd>lprev<CR>zz")
keymap.set("n", "<leader>ln", "<cmd>lnext<CR>zz")

--replace the word under cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- undotree
keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
