" Use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set expandtab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Enable folding
" set foldmethod=manual
set foldmethod=indent
" set foldmethod=expr
" expresion to fold paragrafs with two empty lines
set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'^\\s*$'&&getline(v:lnum+2)=~'\\S'?'<1':1
" modeline version (escape colon's)
" // vim: foldmethod=expr foldexpr=getline(v\:lnum)=~'^\\s*$'&&getline(v\:lnum+1)=~'^\\s*$'&&getline(v\:lnum+2)=~'\\S'?'<1'\:1
" set foldmethod=marker
" set foldmarker=,}}}
" set foldmethod=syntax
" set foldmethod=diff

set foldlevel=9

" Add a bit extra margin to the left
set foldcolumn=5

