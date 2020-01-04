" Enable winresizer
let g:winresizer_enable=1

" Enable winresizer in the GUI
let g:winresizer_gui_enable=0

" Finish with <Esc> if this value is 1
let g:winresizer_finish_with_escape=1

" The width to add or subtract when the `left` or `right` key is pressed
let g:winresizer_vert_resize=10

" The height to add or subtract when the `up` or `down` key is pressed
let g:winresizer_horiz_resize=3

" The key used to start winresizer
" let g:winresizer_start_key=<C-e>
nnoremap <leader>e :WinResizerStartResize<cr>

" The key used to start winresizer in the GUI
" let g:winresizer_gui_start_key=<C-a>

" The keycode used as the `left` or `h` key
let g:winresizer_keycode_left=104 " h

" The keycode used as the `right` or `l` key
let g:winresizer_keycode_right=108 " l

" The keycode used as the `down` or `j` key
let g:winresizer_keycode_down=106 " j

" The keycode used as the `up` or `k` key
let g:winresizer_keycode_up=107 " k

" The keycode used as the `focus` or `f` key
let g:winresizer_keycode_focus=102 " f

" The keycode used as the `move` or `m` key
let g:winresizer_keycode_move=109 " m

" The keycode used as the `resize` or `r` key
let g:winresizer_keycode_resize=114 " r

" The keycode used as the `mode` or `e` key
let g:winresizer_keycode_mode=101 " e

" The keycode used as the `finish` or Enter> key
let g:winresizer_keycode_finish=13 " Enter>

" The keycode used as the `cancel` or `q` key
let g:winresizer_keycode_cancel=113 " q
