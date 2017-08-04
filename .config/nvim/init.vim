:map <F6> :tabp<CR>
:map <F7> :tabn<CR>

"easy tab switching
:map <A-1> 1gt
:map <A-2> 2gt
:map <A-3> 3gt
:map <A-4> 4gt
:map <A-5> 5gt
:map <A-6> 6gt
:map <A-7> 7gt
:map <A-8> 8gt
:map <A-9> 9gt

:map <C-h> b
:map <C-l> e

:command -nargs=+ RTFM !xdg-open "https://doc.rust-lang.org/std/?search=<args>"
:command -nargs=+ Rtfm RTFM <args>
":command Haste :w !pasty upload --open 
:command Gist :w !pasty upload --service github --open --name "%:t"
"fix tabs
set expandtab
set tabstop=4
set shiftwidth=4

set number "line numbers
set textwidth=0 "wrap long lines

call plug#begin()
"vim-plug plugins

Plug 'rust-lang/rust.vim' 
"rust language syntax highlighting

Plug 'mhartington/oceanic-next'
"less ugly colors

Plug 'airblade/vim-gitgutter'
"git gutters

Plug 'jiangmiao/auto-pairs'
"autoclosing brackets, quotes, etc.

Plug 'scrooloose/nerdtree'
"fs tree

Plug 'scrooloose/syntastic'
"syntax checking

Plug 'scrooloose/nerdcommenter' 
"comments

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"powerline!! 

Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

Plug 'dylanaraps/wal.vim'
call plug#end()

"NERD Tree open/close
map <C-n> :NERDTreeToggle<CR>

"make gitgutter-signs update more often
set updatetime=250

"fix the clipboard
set clipboard=unnamedplus



"syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=7

let g:airline_powerline_fonts = 1
let g:airline_theme='wal'
set noshowmode
"powerline

"rustfmt config
let g:rustfmt_autosave = 1 

"nerdtree
let g:NERDTreeWinSize=20
"nerd commenter config
let g:NERDSpaceDelims = 1

" Theme
syntax enable
colorscheme wal