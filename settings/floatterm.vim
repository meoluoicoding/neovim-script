" Open a new terminal 
nnoremap <silent> <leader>op    :FloatermNew<CR>
tnoremap <silent> <leader>op    <C-\><C-n>:FloatermNew<CR>

" Kill current terminal 
nnoremap <silent> <leader>kk :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> <leader>kk <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Navigation next and previous terminal 
nnoremap <silent> <leader>nn :FloatermNext<CR>
tnoremap <silent> <leader>nn <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <leader>pp :FloatermPrev<CR>
tnoremap <silent> <leader>pp <C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap <silent> <leader>tt :FloatermToggle<CR>
tnoremap <silent> <leader>tt <C-\><C-n>:FloatermToggle<CR>

" Focus terminal 
nnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>
tnoremap <silent> <leader>tf <C-\><C-n><C-W><Left>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git 
nnoremap <silent> <leader>gl :FloatermNew! --position=bottomright --height=0.95 --width=0.7 --title='GitLog' git lg<CR>
let g:floaterm_position='topright'
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.6
let g:floaterm_height=0.6
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
let g:floaterm_wintype = 'float'
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_rootmarkers = ['.pro']
hi Floaterm guibg=Grey15
