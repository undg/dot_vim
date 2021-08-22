" Toggle spell check
nnoremap zz :setlocal spell! spell?<CR>
nnoremap <F7> zz
imap <F7> <esc>zzi

" More consistent spell checking. Keep using same fingers.
nnoremap z] ]s
nnoremap ]z ]s
nnoremap [z [s
nnoremap z[ [s

nnoremap zs "zyiw <cmd> echon system('trans -no-ansi -speak "' . getreg('z') . '"')<cr>
vnoremap zs "zy   <cmd> echon system('trans -no-ansi -speak "' . getreg('z') . '"')<cr>

nnoremap <silent> zt "zyiw <cmd> call system('trans en:pl --play -b "' . getreg('z') . '"')<cr>
vnoremap <silent> zt "zy   <cmd> call system('trans en:pl --play -b "' . getreg('z') . '"')<cr>

