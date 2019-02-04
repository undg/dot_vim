" KEY MAPPINGS gitgutter {{{
    " To change the hunk-jumping maps (defaults shown):
        nmap [h <Plug>GitGutterPrevHunk
        nmap ]h <Plug>GitGutterNextHunk

    " To change the hunk-staging/undoing/previewing maps (defaults shown):
        nmap <Leader>hs <Plug>GitGutterStageHunk
        nmap <Leader>hu <Plug>GitGutterUndoHunk
        nmap <Leader>hp <Plug>GitGutterPreviewHunk

    " To change the hunk text object maps (defaults shown):
        " omap ic <Plug>GitGutterTextObjectInnerPending
        " omap ac <Plug>GitGutterTextObjectOuterPending

    " To change the hunk text object maps (defaults shown):
        " xmap ic <Plug>GitGutterTextObjectInnerVisual
        " xmap ac <Plug>GitGutterTextObjectOuterVisual

    " To disable all key maps:
        " let g:gitgutter_map_keys = 0
" }}}

" SETTINGS gitgutter {{{
    " To use a custom grep command
    " To use a custom invocation for grep, use this:
        " let g:gitgutter_grep_command = 'grep --color=never -e'

    " To turn off vim-gitgutter by default
        " let g:gitgutter_enabled = 0

    " To turn off signs by default
    " Note that the sign column will still be present if you have line highlighting switched on.
        " let g:gitgutter_signs = 0

    " To turn on line highlighting by default
        " let g:gitgutter_highlight_lines = 1

    " To stop vim-gitgutter running in realtime
        " let g:gitgutter_realtime = 0

    " To stop vim-gitgutter running eagerly
        " let g:gitgutter_eager = 0

    " To turn off asynchronous updates
    " By default diffs are run asynchronously.  To run diffs synchronously
    " instead:
        " let g:gitgutter_async = 0
" }}}
