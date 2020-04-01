" Ignore case when searching
set ignorecase
" When searching try to be smart about cases
set smartcase
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=4

" Disable highlight till next search ',/'
map <silent> <leader>/ :noh<cr>

" useful when studying strange source code.
source ~/.vim/func/AutoHighlightToggle.vim
nnoremap <leader>hh :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

" search visual selected '//'
vnoremap // y/<C-R>"<CR>

" selecting/searching yanked text 'gp'
map gp `[v`]
map g/ /<C-r>"

" Highlight yanked
nnoremap <silent> <? :let @/=substitute(escape(@", '\\/.*$^~[]'), '\n', '\\n', 'g')<CR>:set hlsearch<cr>

" Search selected
" todo: I like to make it behave like 'Highlight yanked' above
vnoremap <silent> * :<C-U>
            \let old_reg=getreg('"')<bar>
            \let old_regmode=getregtype('"')<cr>
            \gvy/<C-R><C-R>=substitute(
            \escape(@", '\\/.*$^~[]'), '\n', '\\n', 'g')<cr><cr>
            \:call setreg('"', old_reg, old_regmode)<cr>
            \<S-n>


" bind g/G to grep word under cursor
nnoremap <leader>G :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
vnoremap <leader>G y:grep! "\b<C-R>"\b"<CR>:cw<CR>


nnoremap <leader>g :grep! "\b<C-R><C-W>\b"
vnoremap <leader>g y:grep! "\b<C-R>"\b"
