" Remove toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Use console dialogs
set guioptions+=c

" Disable visual bell (Requires 'set noeb vb t_vb=' in vimrc)
set vb t_vb=

" Set font
set guifont=Knack_NF:h12

" Start in fullscreen
au GUIEnter * simalt ~x
