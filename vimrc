" Plug
set nocompatible

" Loads in different places depending on operating system
if has("win32")
  call plug#begin('$HOME/vimfiles/plugged')
else
  call plug#begin("$HOME/.vim/plugged")
endif

" Plugin list

Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
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
Plug 'PProvost/vim-ps1'
Plug 'rpdelaney/vim-sourcecfg'
Plug 'ycm-core/YouCompleteMe'
Plug 'chaimleib/vim-renpy'

" Plug end
call plug#end()

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Always use English on Windows
if has("win32")
  set langmenu=en_US.UTF-8
  language English_United States
endif

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Colorscheme
try
  colorscheme base16-ateliercave
catch
  echom 'Could not init colorscheme, possibly installing?'
endtry

" Sets up enviroment
filetype plugin indent on
syntax on
set smartindent
set encoding=utf-8

if has("win32")
endif

" Makes splitting not suck
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fix backspace to my liking
set backspace=2

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Remaps
nnoremap <silent> f5 :w<CR> :<C-u> ! python %<CR>
map <leader>o :BufExplorer<cr>

" NERDTree Remaps
map - :NERDTreeToggle<cr>

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

if has("win32")
  set belloff=all " Just to make sure ;)
endif
