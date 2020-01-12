syntax enable

colorscheme gruvbox
set background=dark

hi Normal      ctermbg=0 guibg=#131313
hi ColorColumn ctermbg=0 guibg=#303030
hi LineNr      ctermbg=0 guibg=#3C3836

if has("patch-7.4.710")
    set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
else
    set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
endif

" show white spaces
set list

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Fix background in tmux
set t_ut=

