" Override global cfg in '~/.vim/custom.vimrc'
" This file is in .gitignore.
" It is for local machine specific adjustments.

if !empty(glob(customConfig))
    exe 'source' . customConfig
else
    echom "Creating " . customConfig
    silent exe '!touch '.customConfig
endif

