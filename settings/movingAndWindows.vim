" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" fullscreen window ',z'
nnoremap <leader>z :tabnew %<CR>
nnoremap <leader>b :Buffers<CR>

" Areas of the screen where the splits should occur
set splitbelow
set splitright
"
" fugitive Gdiff vertically
set diffopt+=vertical


