let mapleader = "\<space>"

" Quick edit and reload vim config
nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

" Remove all buffers (recent open files)
nmap <leader>Q :bufdo bdelete<cr>

" Remove highlight
noremap <silent> <esc> :noh <CR>

" Allow gf to open/create non exists file
map gf :edit <cfile><cr>

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Make Y behave like other capitals
nnoremap Y y$

" Quicky escape to normal mode
imap ii <esc>

" Save file the traditional way
imap <C-s> <esc> :w <cr>
nmap <C-s> :w <cr>
"quit vim 
imap <Leader>q :q<cr>
nmap <leader>q :q<cr>

" Search selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"split pannel
nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>/ :split<CR>
"moving around 
nnoremap ff  $
nnoremap dd  0 

