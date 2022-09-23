vim.cmd(':autocmd!')

vim.wo.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.scrolloff = 7
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false
vim.opt.path:append { '**' } -- Finding files - Search down into directories
vim.opt.wildignore:append { '*/node_modules/*)' }
vim.opt.signcolumn = 'yes' -- Always show diagonstics column
vim.opt.colorcolumn = '120' -- Ruler
vim.opt.hls = false -- Don't hightlight search
vim.opt.foldlevelstart = 99 -- Open all folds on file open
