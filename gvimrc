" Remove toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Use console dialogs
set guioptions+=c

" Disable visual bell (Requires 'set noeb vb t_vb=' in vimrc)
set vb t_vb=

" Start in fullscreen
" au GUIEnter * simalt ~x

" Display extra whitespace
if has("win32")
  set list listchars=tab:»·,trail:·,nbsp:·
else
  set list listchars=tab:Â»Â·,trail:Â·,nbsp:Â·
endif
