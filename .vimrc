set nocompatible              " be iMproved, required
filetype plugin indent on                  " required

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'

call plug#end()            " required

syntax on
set tabstop=4
set shiftwidth=4
set expandtab

set backspace=2

set autoindent
set smartindent
set hlsearch
set number
set relativenumber
set ruler
set splitbelow
set splitright
set clipboard=unnamedplus
set paste
set showcmd
set wildmenu
set cursorline

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
highlight Comment ctermfg=green

"Get rid of arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"fzf
noremap ` :Files<CR>

"multi_cusors
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

" setup for gruvbox colorscheme

let g:colors_name='gruvbox'
let g:gruvbox_termcolors='256'
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_light='hard'

set termguicolors
set background=dark
syntax enable
colorscheme gruvbox

" setup for hard time
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:hardtime_maxcount = 2
let g:hardtime_showmsg = 1
let g:hardtime_allow_different_key = 1

" setup for lightline
set laststatus=2

" setup for nerdtree
map <C-a> :NERDTreeToggle<CR>
