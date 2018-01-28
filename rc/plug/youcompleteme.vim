" use python2
  let g:ycm_server_python_interpreter = '/usr/bin/python2'
  
" ctrl+space function signature
  let g:ycm_semantic_triggers = { 'cpp': [ 're!.' ] }

" auto close previev window
  let g:ycm_autoclose_preview_window_after_completion=1

" let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

" The former line ensures that the autocomplete window goes away when you’re done with it, and the latter defines a shortcut for goto definition.
  " let g:ycm_autoclose_preview_window_after_completion=1
  " map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
