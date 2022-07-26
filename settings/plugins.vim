" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')
" Theme
Plug 'joshdick/onedark.vim',                  " Dark theme

" File browser
Plug 'preservim/nerdTree'                     " File browser  
Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
Plug 'ryanoasis/vim-devicons'                 " Icon
Plug 'tiagofumo'
          \ .'/vim-nerdtree-syntax-highlight'
Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 


" File search
Plug 'junegunn/fzf', 
\ { 'do': { -> fzf#install() } }            " Fuzzy finder 
Plug 'junegunn/fzf.vim'

"intel
Plug 'https://github.com/nvim-lua/popup.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-telescope/telescope-project.nvim'
Plug 'https://github.com/nvim-telescope/telescope-media-files.nvim'
Plug 'https://github.com/jvgrootveld/telescope-zoxide'
Plug 'https://github.com/nvim-telescope/telescope-fzy-native.nvim'
Plug 'https://github.com/sharkdp/fd'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Code intellisense
Plug 'neoclide/coc.nvim', 
    \ {'branch': 'release'}                     " Language server protocol (LSP) 
Plug 'pappasam/coc-jedi',                     " Jedi language server 
Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim' 
Plug 'preservim/nerdcommenter'                " Comment code 
Plug 'alvan/vim-closetag'                     " Auto close HTML/XML tag 
    \ { 
      \ 'do': 'yarn install '
              \ .'--frozen-lockfile '
              \ .'&& yarn build',
      \ 'branch': 'main' 
    \ }
" Code syntax highlight
Plug 'yuezk/vim-js'                           " Javascript
Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
Plug 'uiiaoo/java-syntax.vim'                 " Java
  
" Debugging
Plug 'puremourning/vimspector'                " Vimspector

" Source code version control 
Plug 'tpope/vim-fugitive'                     " Git infomation 
Plug 'tpope/vim-rhubarb' 
Plug 'airblade/vim-gitgutter'                 " Git show changes 
Plug 'samoshkin/vim-mergetool'                " Git merge
  "LSP+treesitter
Plug 'https://github.com/junnplus/nvim-lsp-setup'
Plug 'https://github.com/neovim/nvim-lspconfig'
Plug 'https://github.com/williamboman/nvim-lsp-installer'
Plug 'https://github.com/hrsh7th/cmp-nvim-lsp'
Plug 'https://github.com/hrsh7th/cmp-buffer'
Plug 'https://github.com/hrsh7th/cmp-path'
Plug 'https://github.com/hrsh7th/cmp-cmdline'
Plug 'https://github.com/hrsh7th/nvim-cmp'
Plug 'https://github.com/hrsh7th/cmp-vsnip'
Plug 'https://github.com/hrsh7th/vim-vsnip'
Plug 'https://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"something more
Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/sbdchd/neoformat'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
"{{ Syntax Highlighting and Colors }}
Plug 'kovetskiy/sxhkd-vim'                         " sxhkd highlighting
Plug 'vim-python/python-syntax'                    " Python highlighting
Plug 'ap/vim-css-color'                            " Color previews for CSS
"{{ Junegunn Choi Plugins }}
Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
"float terminal
Plug 'https://github.com/voldikss/vim-floaterm'


call plug#end()
" Set theme 
colorscheme onedark
" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  
" Auto close tag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.vue'
let g:closetag_emptyTags_caseSensitive = 1
let g:jsx_ext_required = 0

call plug#end()

