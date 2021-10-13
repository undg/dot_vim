" Treat long lines as break lines (useful when moving around in them) map j gj
map k gk

"split navigations
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" gt <--
nnoremap <A-h> gT
nnoremap <A-j> gT
" gT -->
nnoremap <A-k> gt
nnoremap <A-l> gt

nnoremap tt <cmd>tab split<CR>

" Areas of the screen where the splits should occur
set splitbelow
set splitright
"
" fugitive Gdiff vertically
set diffopt+=vertical

" Set <so> lines to the cursor and relative numbers
set scrolloff=3

