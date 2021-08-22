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
    source ~/.vim/settings/spelling.vim
    source ~/.vim/settings/customVimrc.vim




" ~/.vim/settingsForPlugins/
