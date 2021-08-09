" Use spaces instead of tabs
" set shiftwidth=4
" set tabstop=4

set autoindent
set expandtab
set smarttab
set smartindent
set wrap

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

" Toggle between 4 spaces and pure tab indentation styles
func! ToggleIndentStyle()
    if &softtabstop != 2
        set softtabstop=2
        set shiftwidth=2
        echom "Switched to: Indent with 2 spaces."
    else
        set softtabstop=4
        set shiftwidth=4
        echom "Switched to: Indent with 4 spaces."
    endif
    call indent_guides#toggle()  
    call indent_guides#toggle()  
endfu
noremap <C-_> :call ToggleIndentStyle()<CR>
