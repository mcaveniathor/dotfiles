if &compatible
  set nocompatible
endif
set runtimepath+=/home/thor/.config/nvim/bundle/repos/github.com/Shougo/dein.vim
if dein#load_state('/home/thor/.config/nvim/bundle')
  call dein#begin('/home/thor/.config/nvim/bundle')
  call dein#add('/home/thor/.config/nvim/bundle/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call deoplete#enable()
  call dein#add('zchee/deoplete-clang')
  call dein#add('Shougo/neopairs.vim')
  call dein#add('Shougo/neco-syntax')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('wokalski/autocomplete-flow', { 'for':['javascript', 'javascript.jsx']})
  call dein#add('othree/jspc.vim', { 'for':['javascript', 'javascript.jsx']})
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('Shougo/neco-vim')
  call dein#add('zchee/deoplete-zsh')
  call dein#add('sebastianmarkow/deoplete-rust')
  call dein#add('icymind/NeoSolarized')
  call dein#add('donRaphaco/neotex')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Shougo/denite.nvim')
  "call dein#add('Yggdroot/indentLine')
  call dein#add('w0rp/ale')
  call dein#add('mhinz/vim-grepper')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('ap/vim-css-color')
  call dein#add('raimondi/delimitmate')
  call dein#add('posva/vim-vue')
  call dein#add('tmux-plugins/vim-tmux-focus-events')
  call dein#add('edkolev/tmuxline.vim')
  call dein#add('christoomey/vim-tmux-navigator')
  call dein#add('arakashic/chromatica.nvim')
  call dein#add('jsfaint/gen_tags.vim')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('hyshka/vim-uikit')
  call dein#add('Chiel92/vim-autoformat')
  call dein#add('fatih/vim-go')
  call dein#end()
  call dein#save_state()
endif
"Install new plugins on startup
if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable
set encoding=utf8
set nomodeline
set backspace=indent,eol,start
set gdefault
"enable line numbers
set nu
"Tab spaces
set tabstop=2
"number of spaces when using < and >
set shiftwidth=2
"use shiftwidth value when tab is pressed
set smarttab
"insert spaces instead of tab
set expandtab
"backspace treats spaces as tab
set softtabstop=2
set autoindent
set smartindent
"ignore line numbers in selection
set mouse=a
"set colors
set termguicolors
set background=dark
set completeopt+=noselect
set clipboard^=unnamed,unnamedplus
set undolevels=100
set conceallevel=2 concealcursor=i
set noerrorbells
set hlsearch
set title
set cursorline
set nostartofline
set wrap
set path+=**
nnoremap <tab> >>
nnoremap <s-tab> <<
let mapleader = " "
nnoremap <Leader><Tab> :bnext!<CR>
nnoremap <S><Leader><Tab> :bprev!<CR><Paste>
"Language Specific Settings
"
"Python
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class tabstop=4 shiftwidth=4 softtabstop=4
"remove trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e

"LaTeX
autocmd BufRead *.tex set NeoTexOn
let g:neotex_enabled=1
let g:neotex_latexdiff=1

"Markup
autocmd FileType markdown setlocal wrap
"Plugin settings
"
"Deoplete/Neosnippet
let g:deoplete#enable_at_startup=1
let g:neosnippet#enable_completed_snippet = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path=1
function! s:neosnippet_complete()
  if pumvisible()
    return "\<c-n>"
  else
    if neosnippet#expandable_or_jumpable()
      return "\<Plug>(neosnippet_expand_or_jump)"
    endif
    return "\<tab>"
  endif
endfunction
imap <expr><TAB> <SID>neosnippet_complete()
"
"C-family
let g:deoplete#sources#clang#libclang_path = '/usr/lib64/libclang.so'
let g:deoplete#sources#clang#libclang_header = '/usr/lib64/clang'
let g:deoplete#sources#clang#std = {'c': 'c11', 'cpp': 'c++1z', 'objc': 'c11', 'objcpp': 'c++1z'}
autocmd FileType cpp :ChromaticaStart
let g:chromatica#responsive_mode=1
"
"Go
let g:deoplete#sources#go#gocode_binary = '/home/thor/go/bin/gocode'
let g:deoplete#sources#go#sort_class = [ 'package', 'func', 'var', 'const' ]
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#cgo = 1
let g:deoplete#sources#go#cgo#libclang_path = '/usr/lib64/libclang.so'
let g:deoplete#sources#go#auto_goos = 1
"
"Javascript
let g:autocomplete_flow#insert_paren_after_function = 0
"
"Rust
let g:deoplete#sources#rust#racer_binary='$HOME/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='$HOME/src/rust'
let g:deoplete#sources#rust#show_duplicates=1
"
"HTML
autocmd BufWritePre,BufRead *.html :normal gg=G
autocmd BufWritePre,BufRead *.vue :normal gg=G
"
"NeoSolarized
let g:neosolarized_contrast = "high"
let g:neosolarized_visibility = "normal"
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
colorscheme NeoSolarized
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"Vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
set laststatus=0
set noshowmode
let g:airlineTheme = 'solarized'
"vim-gitgutter
set updatetime=250
let g:gitgutter_map_keys = 0
let g:gitgutter_grep_command = 'ag'
"indentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '︙'
"grepper
"leader f p to search entire project, leader fb to search current buffers
nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>
"NERDtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <Leader>n :NERDTreeToggle<CR>
"Tmuxline
let g:tmuxline_preset = {
      \'a'      :'#S',
      \'b'      :'#W',
      \'c'      :'#(whoami)',
      \'win'    :['#W','#I', '#F'],
      \'cwin'   : ['#W','#I','#F'],
      \'x'      :'#(date)',
      \'y'      :'#(echo)',
      \'z'      :'#(echo)'}
"vim-tmux-navigator
let g:tmux_navigator_save_on_switch=2
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-p> :TmuxNavigatePrevious<cr>
if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif
"
"ALE
let g:ale_sign_error =''
let g:ale_sign_warning= ''
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \'javascript': ['eslint']}
let g:ale_javascript_eslint_use_global=1
"Scripts
"
"autoreload config
augroup autoloadrc
  au!
  autocmd bufwritepost .init.vim source ~/.config/nvim/init.vim
augroup END
"smart hybrid numbering
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

noremap <F3> :Autoformat<CR>
let g:go_fmt_command = "goimports"
