" jk to go back to normal mode
imap jk <esc>
" Stop that stupid window from popping up!
map q: :q
" No fcking way! Nope, I don't want ex mode!
map Q <Nop>


" Type ',,' to save file (a lot faster than ':w<Enter>'):
nnoremap <Leader><Leader> :write<cr>

" save ',s' and open session with 'vim -S'
nnoremap <leader>s :mksession!<CR>

" Type ',q' to quit file
nnoremap <leader>q :quit<cr>

" Open vimrc with ',ev'
nnoremap <leader>ev <CMD>tabnew $vimrc \| lcd %:p:h<CR>
nnoremap <leader>ec <CMD>source %<CR>:echom 'SOURCE current file'<CR>
nnoremap <leader>es <CMD>source $vimrc <CR>:echom 'SOURCE vimrc'<CR>
" auto reload vimrc
" bug: it reloadnig only in vimrc
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $vimrc       source $vimrc | echom "SOURCE ".$vimrc
    autocmd BufWritePost ~/.vim/*.vim source $vimrc | echom "SOURCE ".$vimrc
augroup END

" cd to current file dir, only current window
nnoremap <silent> <leader>cd :lcd %:p:h<CR>

" Toggle list (display unprintable characters).
nnoremap <F8> :set list!<CR>
imap <F8> <esc>:set list!<CR>i

" remove html tag, keep content
map <leader>dt "aditcat<C-x><C-r>a<ESC>

" remove white spaces on end line
map <leader>sp :%s/\s\+$//ge<CR>:echomsg "white space cleaing"<cr>

" get git branch go into insert mode.
map <leader>gb :0r!git rev-parse --abbrev-ref HEAD<CR>A:<SPACE>

" pop-up selection (autocomplete)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" repeat last macro
nnoremap <CR> @@

" Insert line bellow (like enter), but cursor will stay on same line.
" inoremap <C-S-O> <C-o>O

" Yanking/Pasting
nnoremap <leader>p "+p
vnoremap <leader>y "+y
" Yank to end of line
nnoremap Y y$
" Only visual, keep same yank in register
vnoremap <leader>p "_dP

" Keep in center
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap <C-n> <cmd>cnext<CR>zzzv
nnoremap <C-p> <cmd>cprev<CR>zzzv

" Extra break points
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

" Why it is not default in vim and tmux? 
nnoremap <c-w>- <cmd>split<cr>
nnoremap <c-w>\ <cmd>vsplit<cr>

" print all files from current directory except index.
command! -bar Clear :0,$delete
command! -bar GetFileList :r!ls %:h
command! -bar DeleteIndexJs :%s/^index\.\(t\|j\)sx\?$\?\n//g
command! -bar DeleteCss :%s/^.*\.scss$\n//g
command! -bar DeleteEmptyLines :%s/^$\n//g
command! -bar ExportAllJsSubstitute :%s/^\(.*\)$/export \* from '\.\/\1'/g|:%s/\(.js\|.ts\|.jsx\|.tsx\)//g|:sort u
command! ExportAll Clear|GetFileList|:0delete|DeleteIndexJs|DeleteCss|DeleteEmptyLines|ExportAllJsSubstitute|:nohlsearch

