" TRUE COLORS
if has("patch-7.4.710")
  set termguicolors
endif

" OR TRANSPARENT BACKGROUND
hi Normal ctermbg=none
hi NonText ctermbg=none

" Options
" In order to change these options, type let g:gruvbox_(option) = '(value)' in your .vimrc (with quotes).

" g:gruvbox_bold
" Enables bold text.
" default: 1

" g:gruvbox_italic
" Enables italic text.
" default: gui 1, term 0

" g:gruvbox_underline
" Enables underlined text.
" default: 1

" g:gruvbox_undercurl
" Enables undercurled text.
" default: 1

" g:gruvbox_termcolors
" Uses 256-color palette (suitable to pair with gruvbox-palette shell script). If you're dissatisfied with that, set option value to 16 to fallback base colors to your terminal palette. Refer † for details.
" default: 256

" [DEPRECATED] g:gruvbox_contrast
" Possible values are soft, medium and hard.
" default: medium

" g:gruvbox_contrast_dark
" Changes dark mode contrast. Overrides g:gruvbox_contrast option. Possible values are soft, medium and hard.
" default: medium

" g:gruvbox_contrast_light
" Changes light mode contrast. Overrides g:gruvbox_contrast option. Possible values are soft, medium and hard.
" default: medium

" g:gruvbox_hls_cursor
" Changes cursor background while search is highlighted. Possible values are any of gruvbox palette.
" default: orange

" g:gruvbox_number_column
" Changes number column background color. Possible values are any of gruvbox palette.
" default: none

" g:gruvbox_sign_column
" Changes sign column background color. Possible values are any of gruvbox palette.
" default: bg1

" g:gruvbox_color_column
" Changes color column background color. Possible values are any of gruvbox palette.
" default: bg1

" g:gruvbox_vert_split
" Changes vertical split background color. Possible values are any of gruvbox palette.
" default: bg0

" g:gruvbox_italicize_comments
" Enables italic for comments.
" default: 1

" g:gruvbox_italicize_strings
" Enables italic for strings.
" default: 0

" g:gruvbox_invert_selection
" Inverts selected text.
" default: 1

" g:gruvbox_invert_signs
" Inverts GitGutter and Syntastic signs. Useful to rapidly focus on.
" default: 0

" g:gruvbox_invert_indent_guides
" Inverts indent guides. Could be nice paired with set list so it would highlight only tab symbols instead of it's background.
" default: 0

" g:gruvbox_invert_tabline
" Inverts tabline highlights, providing distinguishable tabline-fill.
" default: 0

" g:gruvbox_improved_strings
" Extrahighlighted strings
" default: 0

" g:gruvbox_improved_warnings
" Extrahighlighted warnings
" default: 0

" g:gruvbox_guisp_fallback
" Delegates guisp colorings to guifg or guibg. This is handy for terminal vim. Uses guifg or guibg for colors originally assigned to guisp. guisp concerns the colors of underlines and strikethroughs. Terminal vim cannot color underlines and strikethroughs, only gVim can. This option instructs vim to color guifg or guibg as a fallback.

" default: 'NONE'

" Possible Values: 'fg', 'bg'

" Functions
" gruvbox#invert_signs_toggle()
" (...)

" gruvbox#hls_show()
" (...)

" gruvbox#hls_show_cursor()
" (...)

" gruvbox#hls_hide()
" (...)

" gruvbox#hls_hide_cursor()
" (...)

" gruvbox#hls_toggle()
" (...)
