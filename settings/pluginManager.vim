" VIMPLUG START
call plug#begin('~/.vim/plugged')
" DOWNLOAD VIM-PLUG IN CASE OF FRESH START
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source vimrc
endif

" STEP ABOVE 'NOCOMPATIBLE'
Plug 'tpope/vim-sensible'

" GIT PLUGINS
    Plug 'tpope/vim-fugitive'
    " Plug 'shumphrey/fugitive-gitlab.vim' " Gbrowse gitlab
    " let g:fugitive_gitlab_domains = ['git.gitlab-domain.net']
    Plug 'tpope/vim-rhubarb' " Gbrowse github
    " git diff in gutter(column line number)
    Plug 'airblade/vim-gitgutter'
        source ~/.vim/settingsForPlugins/vim-gitgutter.vim

" FILE MANAGERS
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'Xuyuanp/nerdtree-git-plugin'
        source ~/.vim/settingsForPlugins/nerdtree.vim
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
        source ~/.vim/settingsForPlugins/fzf.vim
    " quickfix window (cw) open in split/tab...
    Plug 'yssl/QFEnter'
    augroup myvimrc
        autocmd!
        autocmd QuickFixCmdPost [^l]* cwindow
        autocmd QuickFixCmdPost l*    lwindow
    augroup END
    " Plug 'rafaqz/ranger.vim'
    " Plug 'francoiscabrol/ranger.vim'
    "     source ~/.vim/settingsForPlugins/ranger.vim

" PRODUCTIVITY
    " Plug 'Shougo/neoyank.vim'
    " Plug 'vim-scripts/YankRing.vim'
    Plug 'bfredl/nvim-miniyank'
        source ~/.vim/settingsForPlugins/nvim-miniyank.vim

    Plug 'und3rdg/Tabmerge'

    Plug 'lilydjwg/colorizer' ", { 'on': 'Colorizer' }
        source ~/.vim/settingsForPlugins/colorizer.vim
    Plug 'blindFS/vim-colorpicker'
    "Plug 'davidhalter/jedi-vim' " python

    Plug 'tpope/vim-commentary'
    Plug 'tmhedberg/SimpylFold'
        source ~/.vim/settingsForPlugins/simplyfold.vim
    Plug 'godlygeek/tabular'
        vmap <leader>t :Tabularize/
    Plug 'dhruvasagar/vim-table-mode'
        source ~/.vim/settingsForPlugins/vim-table-mode.vim " <,tb>
    Plug 'AndrewRadev/linediff.vim'

    Plug 'christoomey/vim-tmux-navigator'
        source ~/.vim/settingsForPlugins/vim-tmux-navigator.vim
    Plug 'benmills/vimux'
        source ~/.vim/settingsForPlugins/vimux.vim
    Plug 'blueyed/vim-diminactive'

    Plug 'terryma/vim-expand-region'
        source ~/.vim/settingsForPlugins/vim-expand-region.vim
    Plug 'terryma/vim-smooth-scroll'
        source ~/.vim/settingsForPlugins/vim-smooth-scroll.vim
    Plug 'simeji/winresizer' " <C-e>
        source ~/.vim/settingsForPlugins/winresizer.vim
    Plug 'vimwiki/vimwiki'
    Plug 'djoshea/vim-autoread'
    Plug 'kshenoy/vim-signature'
        nnoremap mt :SignatureToggleSigns<cr>
    Plug 'tpope/vim-surround'
    Plug 'aserebryakov/vim-todo-lists'
        let g:VimTodoListsMoveItems = 0


" SYNTAX
    " AUTOCOMPLEATION VERSION 3
    " plus: definition's doc's and renaming
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        let g:deoplete#enable_at_startup = 1
        Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
            source ~/.vim/settingsForPlugins/deoplete-ternjs.vim
        Plug 'ternjs/tern_for_vim'
            source ~/.vim/settingsForPlugins/tern_for_vim.vim
    else
        Plug 'Valloric/YouCompleteMe'
            source ~/.vim/settingsForPlugins/youcompleteme.vim
        Plug 'ternjs/tern_for_vim'
            source ~/.vim/settingsForPlugins/tern_for_vim.vim
    endif


    Plug 'mattn/emmet-vim'
        source ~/.vim/settingsForPlugins/emmet-vim.vim
    "linting
    Plug 'vim-syntastic/syntastic'
        source ~/.vim/settingsForPlugins/syntastic.vim
    " Plug 'mtscout6/syntastic-local-eslint.vim'

    " JAVACSRIPT
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'neoclide/vim-jsx-improve' " have to be before other syntax plugins.
    Plug 'jelera/vim-javascript-syntax' " keep it last
    " Plug 'mxw/vim-jsx'
    " Plug 'pangloss/vim-javascript'


    " Plug 'ervandew/supertab'
    " AUTO ADD CLOSING
    Plug 'Raimondi/delimitMate'
        source ~/.vim/settingsForPlugins/delimate.vim
    Plug 'tmhedberg/matchit'
    " sass and cs3 syntax
    Plug 'hail2u/vim-css3-syntax'
    Plug 'cakebaker/scss-syntax.vim'
    " PARENTHESES IN DIFFERENT COLOR !!
    Plug 'luochen1990/rainbow'
        source ~/.vim/settingsForPlugins/rainbow.vim
    Plug 'nathanaelkane/vim-indent-guides'
        source ~/.vim/settingsForPlugins/vim-indent-guides.vim
    Plug 'zeekay/vim-beautify'

" THEME
    Plug 'morhetz/gruvbox'
        source ~/.vim/settingsForPlugins/gruvbox.vim
    " Plug 'altercation/vim-colors-solarized'

call plug#end()

