let mapleader = "\<Space>"

" auto install vim-plug and plugins
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" https://github.com/chrisbra/matchit
:packadd! matchit

" From Primeagen
set cc
set signcolumn=yes
set nowrap
set relativenumber
set nu
set incsearch
set nohls
set scrolloff=7
set colorcolumn=110
set background=light
set termguicolors     " enable true colors support for ayu
vnoremap J :m '>+1<CR>gv-gv
vnoremap K :m '<-2<CR>gv-gv

" my own
nnoremap <leader>h :History<CR>

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"" MUST BE
" Plug 'tpope/vim-sensible'
" git support
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
" advanced welcome screen
Plug 'mhinz/vim-startify'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'nanotech/jellybeans.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-projectionist'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-endwise'
Plug 'rlue/vim-barbaric'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-dadbod'
Plug 'jpalardy/vim-slime', {'branch': 'main'}
Plug 'editorconfig/editorconfig-vim'
Plug 'puremourning/vimspector'
Plug 'wellle/targets.vim'
Plug 'sheerun/vim-polyglot'
Plug 'pantharshit00/vim-prisma'
Plug 'janko-m/vim-test'
Plug 'lepture/vim-jinja'
" Targets.vim comes with five kinds for text objects:
" Pair text objects
" Quote text objects
" Separator text objects
" Argument text objects
" Tag text objects
" Auto close parentheses and repeat by dot dot dot...
Plug 'noahfrederick/vim-composer'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mattn/emmet-vim' 
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'
Plug 'tpope/vim-bundler'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'ekalinin/Dockerfile.vim'
let g:coc_global_extensions = [
\ 'coc-cspell-dicts',
\ 'coc-markdownlint',
\ 'coc-omnisharp',
\ 'coc-prisma',
\ 'coc-spell-checker',
\ 'coc-tsserver',
\ 'coc-prettier',
\ 'coc-html',
\ 'coc-lists',
\ 'coc-xml',
\ 'coc-sh',
\ 'coc-css',
\ 'coc-stylelint',
\ 'coc-vimlsp',
\ 'coc-json',
\ 'coc-eslint',
\ 'coc-jest',
\ 'coc-solargraph',
\ 'coc-yaml',
\ 'coc-highlight',
\ 'coc-snippets',
\ 'coc-diagnostic',
\ 'coc-yank',
\ 'coc-git',
\]
call plug#end()
syntax on
filetype plugin on
" https://github.com/vim/vim/blob/master/runtime/doc/russian.txt
" Enable hotkeys for Russian layout
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
silent! colorscheme ayu
let ayucolor="light"
if has('mouse')
set mouse=a
endif

set number
set ignorecase
set undodir=/tmp/.vim/backups
set undofile
""" Basics Keymaps
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> л (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> о (v:count == 0 ? 'gj' : 'j')
noremap <C-m> :make<CR>
" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
vmap "y "*y
nmap "y "*y
nmap "Y "*Y
nmap "p "*p
nmap "P "*P
" highlight last inserted text
nnoremap gV `[v`]
noremap <Leader>s :update<CR>
" Edit .vimrc
map <leader>vl :vsp $MYVIMRC<CR>
map <leader>vr :source $MYVIMRC<CR>
vmap gcc <plug>NERDCommenterToggle
nmap gcc <plug>NERDCommenterToggle
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1
" https://github.com/tpope/vim-endwise/issues/11
execute "inoremap {<CR> {<CR>}<ESC>O"
autocmd FileType scss setl iskeyword+=@-@
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_disabled = 1
" format the entire file
" nnoremap ff :normal! gg=G``<CR>
" set text wrapping toggles
" nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
" find merge conflict markers
" nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>
" noremap <leader>hl :set hlsearch! hlsearch?<CR>
" Allows you to enter sudo pass and save the file
" " when you forgot to open your file with sudo
" cmap w!! %!sudo tee > /dev/null %
nmap     <leader>fr <Plug>CtrlSFPrompt
nnoremap <leader>S :lua require('spectre').open()<CR>
"set spell spelllang=en_us,ru_ru
source ~/dotfiles/files/vim-configs/ale.vim
sourc ~/dotfiles/files/vim-configs/coc.vim
source ~/dotfiles/files/vim-configs/fzf.vim
source ~/dotfiles/files/vim-configs/nerdtree.vim
source ~/dotfiles/files/vim-configs/coc-fzf.vim
source ~/dotfiles/files/vim-configs/coc-plugins.vim
source ~/dotfiles/files/vim-configs/test.vim
