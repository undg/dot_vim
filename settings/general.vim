" Enable filetype plugins
filetype plugin on
filetype indent on

" filetype css if *.sass
au BufRead,BufNewFile *.scss set filetype=sass.css
" au BufRead,BufNewFile *.scss set filetype=css.scss
au BufRead,BufNewFile *.sass set filetype=sass
" au BufRead,BufNewFile *.sass set filetype=css.sass

" Auto save on focus lost
au FocusLost * :wa

" Timeout for pressing key sequences
set notimeout
set ttimeout

set mouse=vn
set history=900

set lbr
set tw=120

" Set <so> lines to the cursor and relative numbers
set so=5

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" auto change dir to dir of current file. Possible some plugins compatibility issue
" set autochdir

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread


