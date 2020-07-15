" VIMPLUG START
call plug#begin('~/.vim/plugged')
" DOWNLOAD VIM-PLUG IN CASE OF FRESH START
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source vimrc
endif

" STEP ABOVE 'NOCOMPATIBLE'
Plug 'junegunn/vim-plug'
Plug 'tpope/vim-sensible'

" GIT PLUGINS
    Plug 'tpope/vim-fugitive'
    " Plug 'shumphrey/fugitive-gitlab.vim' " Gbrowse gitlab
    " let g:fugitive_gitlab_domains = ['git.gitlab-domain.net']
    Plug 'tpope/vim-rhubarb' " Gbrowse github
    Plug 'cedarbaum/fugitive-azure-devops.vim'
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

" PRODUCTIVITY
    Plug 'bfredl/nvim-miniyank'
        source ~/.vim/settingsForPlugins/nvim-miniyank.vim

    Plug 'und3rdg/Tabmerge', {'on': ['Tabmerge']} 

    Plug 'lilydjwg/colorizer', {'on': ['ColorHighlight', 'ColorToggle']}
        source ~/.vim/settingsForPlugins/colorizer.vim
    Plug 'blindFS/vim-colorpicker', { 'on': 'ColorPicker' }
    "Plug 'davidhalter/jedi-vim' " python

    Plug 'tpope/vim-commentary'
    Plug 'tmhedberg/SimpylFold'
        source ~/.vim/settingsForPlugins/simplyfold.vim
    Plug 'godlygeek/tabular', {'on': ['Tabularize']}
        vmap <leader>t :Tabularize/
    Plug 'dhruvasagar/vim-table-mode', {'on': ['TableModeToggle', 'TableModeEnable']}
        source ~/.vim/settingsForPlugins/vim-table-mode.vim " <,tb>
    Plug 'AndrewRadev/linediff.vim', {'on': ['Linediff']}

    Plug 'christoomey/vim-tmux-navigator'
        source ~/.vim/settingsForPlugins/vim-tmux-navigator.vim
    Plug 'jpalardy/vim-slime'
        let g:slime_target = "tmux"

    Plug 'benmills/vimux'
        source ~/.vim/settingsForPlugins/vimux.vim
    Plug 'blueyed/vim-diminactive'

    Plug 'terryma/vim-expand-region'
        source ~/.vim/settingsForPlugins/vim-expand-region.vim
    Plug 'terryma/vim-smooth-scroll'
        source ~/.vim/settingsForPlugins/vim-smooth-scroll.vim
    Plug 'simeji/winresizer', {'on': ['WinResizerStartResize']}
        source ~/.vim/settingsForPlugins/winresizer.vim
    Plug 'vimwiki/vimwiki'
        source ~/.vim/settingsForPlugins/vimwiki.vim
    Plug 'djoshea/vim-autoread'
    Plug 'kshenoy/vim-signature', {'on': ['SignatureToggleSigns']}
        nnoremap mt :SignatureToggleSigns<cr>
    Plug 'tpope/vim-surround'
    " Plug 'aserebryakov/vim-todo-lists'
        " let g:VimTodoListsMoveItems = 0
    Plug 'simnalamburt/vim-mundo'



" SYNTAX
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
        source ~/.vim/settingsForPlugins/coc.nvim
        let g:coc_global_extensions = [ 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-snippets' ]

    Plug 'honza/vim-snippets'
    Plug 'heavenshell/vim-jsdoc'
        source ~/.vim/settingsForPlugins/vim-jsdoc.vim

    Plug 'mattn/emmet-vim'
        source ~/.vim/settingsForPlugins/emmet-vim.vim
    "linting
    Plug 'vim-syntastic/syntastic'
        source ~/.vim/settingsForPlugins/syntastic.vim
    " Plug 'mtscout6/syntastic-local-eslint.vim'

    " JAVACSRIPT
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'ianks/vim-tsx'
    Plug 'leafgarland/typescript-vim'
    Plug 'neoclide/vim-jsx-improve' " have to be before other syntax plugins.
    Plug 'jelera/vim-javascript-syntax' " keep it last


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

    " c# and razor
    Plug 'OrangeT/vim-csharp'
    Plug 'adamclerk/vim-razor'

" THEME
    Plug 'morhetz/gruvbox'
        source ~/.vim/settingsForPlugins/gruvbox.vim

call plug#end()

