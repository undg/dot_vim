" Set relativenumber
" Automatic toggling between line number modes
" Normal/Visual mode produce hybrid line numbers,
" Insert relative line numbers

augroup relativeNumberToggle
    set number relativenumber
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

