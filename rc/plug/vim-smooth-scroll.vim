noremap <silent> <c-u> :call   smooth_scroll#up(&scroll, 1, 3)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 1, 3)<CR>
noremap <silent> <c-b> :call   smooth_scroll#up(&scroll*2, 1, 3)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 1, 3)<CR>
