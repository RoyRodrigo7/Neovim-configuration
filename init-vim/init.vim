set encoding=UTF-8
set clipboard=unnamedplus " Acces to clipboard
set number
set cursorline
set tabstop=2      
set shiftwidth=2   " Establece el ancho de sangría en 2 espacios
set expandtab      " Convierte las tabulaciones en espacios
set showcmd
set showmatch
syntax enable
" ==================================================================

call plug#begin('~/.vim/plugged')

" status bar
Plug 'itchyny/lightline.vim'

" Tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Typing () {} []
Plug 'jiangmiao/auto-pairs'

" Autocomplete html
Plug 'mattn/emmet-vim'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" IDE
Plug 'yggdroot/indentLine'
Plug 'preservim/nerdcommenter'

" Terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

" Theme Gruvbox
"Plug 'sainnhe/gruvbox-material'
Plug 'wadackel/vim-dogrun'

"Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()

" ===========================================================

" quick semi
nnoremap <Leader>w :wq<CR>
nnoremap <Leader>q :q<CR>

" Nerd Tree
nnoremap <C-n> :NERDTree<CR>

" tmux navigator
nnoremap <silent> <Leader><C-h> :TnuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TnuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TnuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TnuxNavigateRight<cr>

" terminal
lua require("toggleterm").setup()
nnoremap <C-w> :ToggleTerm<CR>
tnoremap <C-w>q <C-\><C-n>:q<CR>

" autosave
nnoremap <C-s> :w<CR>

"run courrent file
nnoremap <Leader>x :!python3 %<cr>

" for delete all content
nnoremap <C-x> :%d<CR>

" for copy all code
nnoremap <C-c> :%y<CR>

" Theme
"set background=dark
"let g:gruvbox_material_background='medium'
colorscheme dogrun


" dividir la pantalla en 2
nnoremap <Leader>v :vsplit %:p<CR>

" Emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','

" Mapeo para comentar/descomentar línea
map <Leader>c :NERDComment<CR>
