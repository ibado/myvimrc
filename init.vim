set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nohlsearch "no highlight the search matches after press enter
set hidden
set noerrorbells
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=90
set nowrap

call plug#begin('~/.vim/plugged')

Plug 'nvim-telescope/telescope.nvim'
Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ap/vim-buftabline'
Plug 'udalov/kotlin-vim'
Plug 'rust-lang/rust.vim'
"Plug 'mattn/emmet-vim'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = " "
let NERDTreeQuitOnOpen=1

"================================ KEY MAPING ===============================
"
" buffers
nmap <Tab> :bn<CR>
nmap <leader><Tab> :bp<CR>
nmap <leader>w :bd<CR>
" Run source code
autocmd FileType rust nnoremap <C-x> :!cargo run
autocmd FileType c nnoremap <C-x> :!make
autocmd FileType python nnoremap<C-x> :!python3 %
autocmd FileType javascript nnoremap<C-x> :!node %
" YouCompleMe keymap
nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
noremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
" NerdTree keymap
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>ft :NERDTreeFind<CR>
