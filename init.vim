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

" Telescope dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ap/vim-buftabline'
Plug 'vim-airline/vim-airline' " fancy status bottom bar
Plug 'posva/vim-vue'
" colorschemes
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'
Plug 'NLKNguyen/papercolor-theme'
" Languages support
Plug 'udalov/kotlin-vim'
Plug 'rust-lang/rust.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'neovimhaskell/nvim-hs'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " Python highlighter

call plug#end()

"let g:gruvbox_contrast_dark = 'hard'
colorscheme PaperColor
set background=dark

let mapleader = " "
let NERDTreeQuitOnOpen=1

"================================ KEY MAPING ===============================
"
" copy in sys clipboard
noremap <leader>y "+y
" buffers
nmap <Tab> :bn<CR>
nmap <leader><Tab> :bp<CR>
nmap <leader>w :bd<CR>

" Run source code
autocmd FileType rust nnoremap <C-x> :w<cr> :!cargo run<cr>
autocmd FileType c nnoremap <C-x> :w<cr> :!make<cr>
autocmd FileType python nnoremap<C-x> :w<cr> :!python3 %<cr>
autocmd FileType javascript nnoremap<C-x> :w<cr> :!node %<cr>
autocmd FileType go nnoremap<C-x> :w<cr> :!go run %<cr>

" Coc keymaping ============================================================
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
tnoremap <Esc> <C-\><C-n>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Coc keymaping end ========================================================

" NerdTree keymap
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>ft :NERDTreeFind<CR>

" Telescope
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>

" python rename keymap
"nmap <silent> <leader>rr :Semshi rename<CR>
