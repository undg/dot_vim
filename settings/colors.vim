syntax enable

colorscheme gruvbox
set background=dark

hi Normal               ctermbg=0 guibg=#131313
hi ColorColumn          ctermbg=0 guibg=#303030
hi LineNr               ctermbg=0 guibg=#3C3836
hi CocHighlightText     ctermbg=0 guibg=#4C4C44
hi Search               ctermbg=0 guibg=0 guifg=0

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Fix background in tmux
set t_ut=

