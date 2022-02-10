" INIT.VIM by Isma1108 ---- github.com/Isma1108

if &compatible | set nocompatible | endif
runtime viml/commands.vim
syntax on
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

call plug#begin(stdpath("data") . '/plugged')
  "Temas
  Plug 'morhetz/gruvbox'

  "IDE
  Plug 'easymotion/vim-easymotion'
  Plug 'itchyny/lightline.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'preservim/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'sheerun/vim-polyglot'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'glepnir/dashboard-nvim' " {{{2
	  	runtime viml/dashboard.vim
	  " }}}2
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

let NERDTreeQuitOnOpen = 1
let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

