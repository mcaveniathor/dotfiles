execute pathogen#infect()
syntax on
filetype plugin indent on
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
set background=dark
colorscheme solarized
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
