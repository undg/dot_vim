nnoremap <leader>m :FZF<cr>
nnoremap <leader>. :GFiles<cr>
let g:default_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl--': 'split',
            \ 'ctrl-\': 'vsplit' }

" The Silver Searcher
if executable('ag')
" install it with your system package manager
" archlinux: 
" sudo packman -S silversearcher-ag
" debian:
" sudo apt install silversearcher-ag
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
