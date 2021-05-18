set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'

call plug#end()            " required

syntax on

set autoindent
set smartindent

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set backspace=2

set ai
set hlsearch
set number
set relativenumber
set ruler
set splitbelow
set splitright
set clipboard=unnamedplus
set showcmd
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

" setup for linter
let g:ale_linters = {
      \  'python': ['flake8'],
      \  'c': ['cpplint', 'g++'],
      \  'cpp': ['cpplint', 'g++'],
      \ }
let g:ale_fixers = {
      \  '*': ['remove_trailing_lines', 'trim_whitespace'],
      \  'python': ['black'],
      \  'c': ['clang-format'],
      \  'cpp': ['clang-format'],
      \ }
let g:ale_fix_on_save = 1

" setup for linter lightline
let g:lightline = {}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }
