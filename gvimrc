" Remove toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=m
set guioptions-=L

" Set font
set guifont=IBMPlexMono_Nerd_Font_Mono:h11

" Use console dialogs
set guioptions+=c

" Disable visual bell (Requires 'set noeb vb t_vb=' in vimrc)
set vb t_vb=

" Start in fullscreen
" au GUIEnter * simalt ~x

" Display extra whitespace
if has("win32")
  set list listchars=tab:»·,trail:·,nbsp:·
  set rop=type:directx,gamma:1.8,contrast:0.5,level:0.5,geom:1,renmode:5,taamode:1
  set renderoptions+=type:directx
else
  set list listchars=tab:Â»Â·,trail:Â·,nbsp:Â·
endif
