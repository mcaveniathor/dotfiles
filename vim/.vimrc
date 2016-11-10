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
set hidden
""let g:racer_cmd= "~/repos/other/racer/target/release/racer"
""let $RUST_SRC_PATH= "/usr/local/src/rust/src"
""let g:rustfmt_autosave=0
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*
""let g:syntastic_always_populate_loc_list = 1
""let g:syntastic_auto_loc_list = 1
""let g:syntastic_check_on_open = 1
""let g:syntastic_check_on_wq = 0
