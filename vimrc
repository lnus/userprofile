" Plug
set nocompatible

call plug#begin('$HOME/vimfiles/plugged')

" Plugin list
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'flazz/vim-colorschemes'
Plug 'jlanzarotta/bufexplorer'
Plug 'scrooloose/nerdtree'

" Plug end
call plug#end()

" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<s-tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"

" Always use English on Windows
if has("win32")
  set langmenu=en_US.UTF-8
  language English_United States
endif

" Colorscheme
try
  colorscheme jellybeans
catch
  echom 'Could not init colorscheme, possibly installing?'
endtry

" Sets up enviroment
filetype plugin indent on
syntax on
set smartindent
set encoding=utf-8
set renderoptions+=type:directx
set rop=type:directx,gamma:1.8,contrast:0.5,level:0.5,geom:1,renmode:5,taamode:1

" Set font
set guifont=IBMPlexMono_Nerd_Font_Mono:h11

" Fix backspace to my liking
set backspace=2

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Remaps
nnoremap <silent> z :w<CR> :<C-u> ! python %<CR>
map <leader>o :BufExplorer<cr>

" NERDTree Remaps
map q :NERDTreeToggle<cr>

" Sets leader key
let mapleader=" "
let g:EasyMotion_leader_key='<Leader>'

" Visual customization
set background=dark
set autochdir
set number
set numberwidth=5
set relativenumber

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1

" Disable audio bells
set noeb vb t_vb=
set belloff=all " Just to make sure ;)

" Display extra whitespace
if has("win32")
  set list listchars=tab:»·,trail:·,nbsp:·
else
  set list listchars=tab:Â»Â·,trail:Â·,nbsp:Â·
endif
