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
:map <A-h> :bp<CR>
:map <A-l> :bn<CR>

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
set mouse=a "mousing allowed :)

call plug#begin()
"vim-plug plugins

Plug 'rust-lang/rust.vim' 
"rust language syntax highlighting

Plug 'mhartington/oceanic-next'
"less ugly colors

Plug 'airblade/vim-gitgutter'
git gutters

Plug 'jiangmiao/auto-pairs'
"autoclosing brackets, quotes, etc.

Plug 'leafgarland/typescript-vim'
"typescript syntax

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
Plug 'sebastianmarkow/deoplete-rust'
"disabled for now
Plug 'zchee/deoplete-jedi'
"python support for deoplete
Plug 'dylanaraps/wal.vim'

"javascript syntax
Plug 'isRuslan/vim-es6'
"gruvbox
Plug 'morhetz/gruvbox'
call plug#end()

"NERD Tree open/close
map <C-n> :NERDTreeToggle<CR>

"make gitgutter-signs update more often
set updatetime=250

"fix the clipboard
set clipboard=unnamedplus

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
"close preview after deoplete is finished

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
" let g:airline_theme='gruvboxdark'
set noshowmode
"rustfmt config
let g:rustfmt_autosave = 1 
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary='/home/joe/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/joe/.src/rust/src/'
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"nerdtree
let g:NERDTreeWinSize=20
"nerd commenter config
let g:NERDSpaceDelims = 1

" Theme
syntax enable
set bg=dark
colorscheme gruvbox
