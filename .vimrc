syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set laststatus=2

set colorcolumn=80

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'udalov/kotlin-vim'
Plug 'mbbill/undotree'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py --clangd-completer --java-completer --rust-completer' }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ap/vim-buftabline'

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
" YouCompleMe keymap
nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
" NerdTree keymap
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>ft :NERDTreeFind<CR>
