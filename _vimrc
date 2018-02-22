" Vundle
set nocompatible
filetype off

set rtp+=$HOME/vimfiles/bundle/Vundle.vim
call vundle#begin('$HOME/vimfiles/bundle')

" Plugin list
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" Always use English on Windows
if has("win32")
  set langmenu=en_US.UTF-8
  language English_United States
endif

" Sets up enviroment
syntax on
set smartindent
set encoding=utf-8
set renderoptions+=type:directx
set rop=type:directx,gamma:1.8,contrast:0.5,level:0.5,geom:1,renmode:5,taamode:1

" Fixed backspace to my liking
set backspace=2

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Remaps
nnoremap <silent> z :w<CR> :<C-u> ! python %<CR>

" Sets leader key
let mapleader=" "
let g:EasyMotion_leader_key='<Leader>'

" Visual customization
colorscheme moonfly 
set background=dark
set guifont=Knack_NF:h10
set autochdir
set number
set numberwidth=5
set relativenumber

" Airline
set laststatus=2
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1

" Display extra whitespace
if has("win32")
  set list listchars=tab:»·,trail:·,nbsp:·
else
  set list listchars=tab:Â»Â·,trail:Â·,nbsp:Â·
endif
