" Toggle spell check
nmap <F7> :setlocal spell! spell?<CR>
imap <F7> <esc>:setlocal spell! spell?<CR>a

" More consistent spell checking. Keep using same fingers.
nnoremap z] ]s
nnoremap ]z ]s
nnoremap [z [s
nnoremap z[ [s

function! Getreg()
    return substitute(getreg('z'), '[^a-zA-Z0-9 .,:]', ' ' , 'g')
endfunction

function! TransDefine()
    return system('trans -no-ansi -speak -join-sentence ' . Getreg())
endfunction

function! TransTranslate()
    return system('trans en:pl --play --brief -join-sentence ' . Getreg())
endfunction

nmap zs "zyiw <cmd>echon TransDefine()<cr>
vmap zs "zy   <cmd>echon TransDefine()<cr>

nmap <silent> zt "zyiw <cmd>call TransTranslate()<cr>
vmap <silent> zt "zy   <cmd>call TransTranslate()<cr>

