" <INIT>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """""""" Same cfg for vim and nvim """""""""""""
    " put it to ~/.config/nvim/init.vim
    " set runtimepath^=~/.vim runtimepath+=~/.vim/after
    " let &packpath = &runtimepath
    " source ~/.vim/vimrc
    """"""""""""""""""""""""""""""""""""""""""""""""
    let $vimrc = $HOME."/.vim/vimrc"

    let customConfig = $HOME."/.vim/custom.vimrc"
    let mapleader=","
    let maplocalleader=","

" <PLUGINS>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    source ~/.vim/settings/pluginManager.vim

" <SETTINGS>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    source ~/.vim/settings/general.vim
    source ~/.vim/settings/colors.vim
    source ~/.vim/func/Tabline.vim
    source ~/.vim/settings/statusline.vim
    source ~/.vim/settings/dynamicRelativeNumbers.vim
    source ~/.vim/settings/visualMode.vim
    source ~/.vim/settings/movingAndWindows.vim
    source ~/.vim/settings/indentationAndFolding.vim
    source ~/.vim/settings/searchAndHighlighting.vim
    source ~/.vim/settings/productivityKeyBindings.vim
    source ~/.vim/settings/customVimrc.vim




" ~/.vim/settingsForPlugins/vim-gitgutter.vim
" ~/.vim/settingsForPlugins/nerdtree.vim
" ~/.vim/settingsForPlugins/fzf.vim
" ~/.vim/settingsForPlugins/nvim-miniyank.vim
" ~/.vim/settingsForPlugins/colorizer.vim
" ~/.vim/settingsForPlugins/simplyfold.vim
" ~/.vim/settingsForPlugins/vim-table-mode.vim " <,tb>
" ~/.vim/settingsForPlugins/vim-tmux-navigator.vim
" ~/.vim/settingsForPlugins/vimux.vim
" ~/.vim/settingsForPlugins/vim-expand-region.vim
" ~/.vim/settingsForPlugins/vim-smooth-scroll.vim
" ~/.vim/settingsForPlugins/winresizer.vim
" ~/.vim/settingsForPlugins/vimwiki.vim
" ~/.vim/settingsForPlugins/coc.nvim
" ~/.vim/settingsForPlugins/vim-jsdoc.vim
" ~/.vim/settingsForPlugins/emmet-vim.vim
" ~/.vim/settingsForPlugins/syntastic.vim
" ~/.vim/settingsForPlugins/delimate.vim
" ~/.vim/settingsForPlugins/rainbow.vim
" ~/.vim/settingsForPlugins/vim-indent-guides.vim
" ~/.vim/settingsForPlugins/gruvbox.vim
