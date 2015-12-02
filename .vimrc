set nocompatible " be iMproved, required
set t_Co=256
set number
set encoding=utf-8
set tabstop=4
filetype off     " required

call pathogen#helptags()
call pathogen#infect()

filetype plugin indent on

set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs

"set guifont=Liberation\ Mono\ for\ Powerline\ 10 
let g:Powerline_symbols = 'unicode'
let g:Powerline_theme = 'default'
let g:Powerline_colorscheme = 'solarized256'

colorscheme molokai

set clipboard=unnamedplus

map <F3> :NERDTreeToggle<CR>

set wildmenu
set wildignore+=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*/*.dSYM/*,*.dylib

let g:pymode_folding = 0

let g:pymode_rope_lookup_project = 0

let g:pymode_rope = 0

let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pylint', 'pep8']
let g:pymode_lint_cwindow = 1
let g:pymode_lint_ignore="E501,W601,C0110,C0111"
let g:pymode_lint_write = 0

let g:pymode_run = 0

let g:pymode_options_colorcolumn = 0

vnoremap < <gv " Shift+> keys
vnoremap > >gv " Shift+< keys

" CTRL-S is Quicksave command
noremap <C-S> :update<CR>
vnoremap <C-s> <C-C>:update<CR>
inoremap <C-s> <C-O>:update<CR>

" Easier split navigations
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Easier change size for splitted windows
nnoremap <M-[> :vertical resize +5<cr>
nnoremap <M-]> :vertical resize -5<cr>

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
noremap <F2> :w<CR>:SyntasticCheck<CR>

let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
hi IndentGuidesOdd  guibg=red   ctermbg=236
hi IndentGuidesEven guibg=green ctermbg=238
