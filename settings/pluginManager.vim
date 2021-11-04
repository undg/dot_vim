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
" If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.
Plug 'tpope/vim-repeat'

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
    Plug 'nvim-lua/plenary.nvim'
    if has('nvim')
        Plug 'nvim-telescope/telescope.nvim'
        source ~/.vim/settingsForPlugins/telescope.vim
    else
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
        source ~/.vim/settingsForPlugins/fzf.vim
    endif


    " quickfix window (cw) open in split/tab...
    Plug 'yssl/QFEnter'
    augroup myvimrc
        autocmd!
        autocmd QuickFixCmdPost [^l]* cwindow
        autocmd QuickFixCmdPost l*    lwindow
    augroup END

" PRODUCTIVITY
    if has('nvim')
        Plug 'bfredl/nvim-miniyank'
            source ~/.vim/settingsForPlugins/nvim-miniyank.vim

        Plug 'nvim-lua/plenary.nvim' " don't forget to add this one if you don't have it yet!
        Plug 'nvim-lua/popup.nvim'
        Plug 'ThePrimeagen/harpoon'
            source ~/.vim/settingsForPlugins/harpoon.vim

    endif

    " experimentl copilot
    Plug 'github/copilot.vim'
        imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true
        highlight CopilotSuggestion guifg=#555555 ctermfg=8

    Plug 'tpope/vim-commentary'
    Plug 'tmhedberg/SimpylFold'
        source ~/.vim/settingsForPlugins/simplyfold.vim
    Plug 'godlygeek/tabular' " , {'on': ['Tabularize']}
        vmap <leader>t :Tabularize/
    Plug 'dhruvasagar/vim-table-mode' " , {'on': ['TableModeToggle', 'TableModeEnable']}
        source ~/.vim/settingsForPlugins/vim-table-mode.vim " <,tb>

    Plug 'terryma/vim-expand-region'
        source ~/.vim/settingsForPlugins/vim-expand-region.vim
    Plug 'terryma/vim-smooth-scroll'
        source ~/.vim/settingsForPlugins/vim-smooth-scroll.vim
    Plug 'vimwiki/vimwiki'
        source ~/.vim/settingsForPlugins/vimwiki.vim
    Plug 'djoshea/vim-autoread'
    Plug 'kshenoy/vim-signature' " , {'on': ['SignatureToggleSigns']}
        nnoremap mt :SignatureToggleSigns<cr>
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'simnalamburt/vim-mundo'
    Plug 'rhysd/vim-grammarous'

" Window, layout look and feel
    Plug 'simeji/winresizer' " , {'on': ['WinResizerStartResize']}
        source ~/.vim/settingsForPlugins/winresizer.vim
    Plug 'christoomey/vim-tmux-navigator'
        source ~/.vim/settingsForPlugins/vim-tmux-navigator.vim
    Plug 'benmills/vimux'
        source ~/.vim/settingsForPlugins/vimux.vim
    Plug 'blueyed/vim-diminactive'
    Plug 'AndrewRadev/linediff.vim' " , {'on': ['Linediff']}
    Plug 'und3rdg/Tabmerge' " , {'on': ['Tabmerge']} 
    Plug 'lilydjwg/colorizer', {'on': ['ColorHighlight', 'ColorToggle']}
        source ~/.vim/settingsForPlugins/colorizer.vim
    Plug 'blindFS/vim-colorpicker' " , { 'on': 'ColorPicker' }
    Plug 'troydm/zoomwintab.vim'
        source ~/.vim/settingsForPlugins/zoomwintab.vim


" SYNTAX
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
        source ~/.vim/settingsForPlugins/coc.vim

    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    " post install (yarn install | npm install) then load plugin only for editing supported files
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    source ~/.vim/settingsForPlugins/vim-prettier.vim

    Plug 'sheerun/vim-polyglot'

    Plug 'honza/vim-snippets'
    Plug 'heavenshell/vim-jsdoc', { 
                \ 'for': ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'], 
                \ 'do': 'make install'
                \}
        source ~/.vim/settingsForPlugins/vim-jsdoc.vim

    Plug 'mattn/emmet-vim'
        source ~/.vim/settingsForPlugins/emmet-vim.vim
    Plug 'niftylettuce/vim-jinja'

    " Auto closing
    Plug 'Raimondi/delimitMate'
        source ~/.vim/settingsForPlugins/delimate.vim
    Plug 'tmhedberg/matchit'
    " Parentheses in different color
    Plug 'luochen1990/rainbow'
        source ~/.vim/settingsForPlugins/rainbow.vim

    " Auto-detect intentation style
    Plug 'tpope/vim-sleuth'
    Plug 'nathanaelkane/vim-indent-guides'
        source ~/.vim/settingsForPlugins/vim-indent-guides.vim
    Plug 'zeekay/vim-beautify'

" THEME
    Plug 'morhetz/gruvbox'
        source ~/.vim/settingsForPlugins/gruvbox.vim

call plug#end()

