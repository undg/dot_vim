" Enable filetype plugins
filetype plugin on
filetype indent on

" set filletype for files with ext
" au BufRead,BufNewFile *.scss         set filetype=scss.css
" au BufRead,BufNewFile *.sass         set filetype=sass
" .ts .js .tsx .jsx .schtml
" au BufRead,BufNewFile *.[jt]sx?.snap set filetype=xml.html
" au BufRead,BufNewFile *.cshtml       set filetype=xml.html
" nvim, vim
au BufRead,BufNewFile *.nvim         set filetype=vim

" tsconfig.json is actually jsonc, help TypeScript set the correct filetype
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
autocmd BufRead,BufNewFile coc-settings.json set filetype=jsonc

" indentation
" au BufRead,BufNewFile *.*            set ts=4 sw=4
" au BufRead,BufNewFile *.s[ac]ss      setlocal ts=2 sw=2
" au BufRead,BufNewFile *.[jt]sx?.snap setlocal ts=2 sw=2

" Auto save on focus lost
" au FocusLost * :wa

" auto :edit<CR>
set autoread

" Timeout for pressing key sequences
set notimeout
set ttimeout

set mouse=n
set history=900

" do not wrap long lines, I'll wrap me myself or prettier will do it.
set textwidth=0
" ...and if they need to be long, just display them with line break.  ...and if they need to be long, just display them with line break.  ...and if they need to be long, just display them with line break.  ...and if they need to be long, just display them with line break.  ...and if they need to be long, just display them with line break.  ...and if they need to be long, just display them with line break.
set linebreak
set breakindent
set breakindentopt=min:60,shift:0,sbr
let &showbreak = '+++ '

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

set nolist

set path+=**
set wildmenu
set wildmode=longest:full,full
if has('nvim')
    set wildoptions=pum,tagfile
else
    set wildoptions=tagfile
endif

