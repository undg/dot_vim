" map <f8> :call VimuxRunCommand("clear; python3 -i " . bufname("%"))<CR>
map <f9> :call VimuxRunCommand("./" . bufname("%"))<CR>

" Run the current file with rspec
map <Leader>rb :call VimuxRunCommand("rspec " . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>r :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>rr :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>ri :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>rq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>rx :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>rz :call VimuxZoomRunner()<CR>
" }}}




