" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Go language support
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'easymotion/vim-easymotion'
    Plug 'morhetz/gruvbox'
    Plug 'liuchengxu/vim-which-key'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'whatyouhide/vim-gotham'

call plug#end()
