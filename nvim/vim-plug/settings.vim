" ---- Vim-Go ----

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" Syntax highlighting for Go
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

" ---- Vim-Which-Key ----
let g:which_key_map = {'w' : 'save', 'r' : 'reformat', 'n': 'nerdtree'}
let g:which_key_map.b = { 'name' :'+buffer', 'd': 'delete current buffer', 'n': 'next TAB', 'p': 'prev SHIFT-TAB' }
let g:which_key_map.v = { 'name' : '+vim', 's': 'source vimrc', 'e': 'edit vimrc' }
let g:which_key_map.n = { 'name': '+nerd', 't': 'toggle nerdtree', 'f': 'focus nerdtree' }
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" ---- NERDTree ----
let NERDTreeShowHidden = 1

" ---- AirLine ----
let g:airline_theme='gotham256'
