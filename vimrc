" <INIT>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    """""""" Same cfg for vim and nvim """""""""""""
    " put it to ~/.config/nvim/init.vim
        " set runtimepath^=~/.vim runtimepath+=~/.vim/after
        " let &packpath = &runtimepath
        " source ~/.vim/vimrc
    """"""""""""""""""""""""""""""""""""""""""""""""
    " and pick one of them
    let $VIM = "~/.vim"
    let $vimrc = $VIM."/vimrc"
    " let $vimrc = $HOME."/.config/nvim/init.vim"
    " let $vimrc = $MYVIMRC

    let customConfig = $VIM."/custom.vimrc"
    let mapleader=","
    let maplocalleader=","

    " VIMPLUG START
    call plug#begin($VIM.'/plugged')
    " DOWNLOAD VIM-PLUG IN CASE OF FRESH START
    if empty(glob($VIM.'/autoload/plug.vim'))
        silent !curl -fLo $VIM/autoload/plug.vim --create-dirs
                    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source vimrc
    endif

    " STEP ABOVE 'NOCOMPATIBLE'
    Plug 'tpope/vim-sensible'

" <VIM-PLUG PLUGINS>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " GIT PLUGINS
        Plug 'tpope/vim-fugitive'
        Plug 'shumphrey/fugitive-gitlab.vim' " Gbrowse gitlab
        " let g:fugitive_gitlab_domains = ['git.domain.tld']
        Plug 'tpope/vim-rhubarb' " Gbrowse github
        " git diff in gutter(column line number)
        Plug 'airblade/vim-gitgutter'
            source $VIM/cfg_plug/vim-gitgutter.vim

    " FILE MANAGERS
        Plug 'scrooloose/nerdtree'
        Plug 'jistr/vim-nerdtree-tabs'
        Plug 'Xuyuanp/nerdtree-git-plugin'
            source $VIM/cfg_plug/nerdtree.vim
        Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        Plug 'junegunn/fzf.vim'
            source $VIM/cfg_plug/fzf.vim
        " quickfix window (cw) open in split/tab...
        Plug 'yssl/QFEnter'
        augroup myvimrc
            autocmd!
            autocmd QuickFixCmdPost [^l]* cwindow
            autocmd QuickFixCmdPost l*    lwindow
        augroup END
        " Plug 'rafaqz/ranger.vim'
        " Plug 'francoiscabrol/ranger.vim'
        "     source $VIM/cfg_plug/ranger.vim

    " PRODUCTIVITY
        " Plug 'Shougo/neoyank.vim'
        " Plug 'vim-scripts/YankRing.vim'
        Plug 'bfredl/nvim-miniyank'
            source $VIM/cfg_plug/nvim-miniyank.vim

        Plug 'und3rdg/Tabmerge'

        Plug 'lilydjwg/colorizer' ", { 'on': 'Colorizer' }
            source $VIM/cfg_plug/colorizer.vim
        Plug 'blindFS/vim-colorpicker'
        "Plug 'davidhalter/jedi-vim' " python

        Plug 'tpope/vim-commentary'
        Plug 'tmhedberg/SimpylFold'
            source $VIM/cfg_plug/simplyfold.vim
        Plug 'godlygeek/tabular'
            vmap <leader>t :Tabularize/
        Plug 'dhruvasagar/vim-table-mode'
            source $VIM/cfg_plug/vim-table-mode.vim " <,tb>
        Plug 'AndrewRadev/linediff.vim'

        Plug 'christoomey/vim-tmux-navigator'
            source $VIM/cfg_plug/vim-tmux-navigator.vim
        Plug 'benmills/vimux'
            source $VIM/cfg_plug/vimux.vim
        Plug 'blueyed/vim-diminactive'

        Plug 'terryma/vim-expand-region'
            source $VIM/cfg_plug/vim-expand-region.vim
        Plug 'terryma/vim-smooth-scroll'
            source $VIM/cfg_plug/vim-smooth-scroll.vim
        Plug 'simeji/winresizer' " <C-e>
            source $VIM/cfg_plug/winresizer.vim
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
                source $VIM/cfg_plug/deoplete-ternjs.vim
            Plug 'ternjs/tern_for_vim'
                source $VIM/cfg_plug/tern_for_vim.vim
        else
            Plug 'Valloric/YouCompleteMe'
                source $VIM/cfg_plug/youcompleteme.vim
            Plug 'ternjs/tern_for_vim'
                source $VIM/cfg_plug/tern_for_vim.vim
        endif


        " AUTOCOMPLEATION VERSION 1
            " Plug 'Valloric/YouCompleteMe'
            "     source $VIM/cfg_plug/youcompleteme.vim
            " Plug 'ternjs/tern_for_vim'
            "     source $VIM/cfg_plug/tern_for_vim.vim



        " AUTOCOMPLEATION VERSION 2
        " if has('nvim')
        "     Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        " else
        "     Plug 'Shougo/deoplete.nvim'
        "     Plug 'roxma/nvim-yarp'
        "     Plug 'roxma/vim-hug-neovim-rpc'
        " endif
        " let g:deoplete#enable_at_startup = 1


        Plug 'mattn/emmet-vim'
            source $VIM/cfg_plug/emmet-vim.vim
        "linting
        Plug 'vim-syntastic/syntastic'
            source $VIM/cfg_plug/syntastic.vim
        Plug 'mtscout6/syntastic-local-eslint.vim'

        " JAVACSRIPT
        Plug 'othree/javascript-libraries-syntax.vim'
        Plug 'neoclide/vim-jsx-improve' " have to be before other syntax plugins.
        Plug 'jelera/vim-javascript-syntax' " keep it last
        " Plug 'mxw/vim-jsx'
        " Plug 'pangloss/vim-javascript'


        " Plug 'ervandew/supertab'
        " AUTO ADD CLOSING
        Plug 'Raimondi/delimitMate'
            source $VIM/cfg_plug/delimate.vim
        Plug 'tmhedberg/matchit'
        " sass and cs3 syntax
        Plug 'hail2u/vim-css3-syntax'
        Plug 'cakebaker/scss-syntax.vim'
        " PARENTHESES IN DIFFERENT COLOR !!
        Plug 'luochen1990/rainbow'
            source $VIM/cfg_plug/rainbow.vim
        Plug 'nathanaelkane/vim-indent-guides'
            source $VIM/cfg_plug/vim-indent-guides.vim
        Plug 'zeekay/vim-beautify'

    " THEME
        Plug 'morhetz/gruvbox'
            source $VIM/cfg_plug/gruvbox.vim
        " Plug 'altercation/vim-colors-solarized'

    call plug#end()

" <SETTINGS>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Enable filetype plugins
    filetype plugin on
    filetype indent on

    " filetype css if *.sass
    au BufRead,BufNewFile *.scss set filetype=sass.css
    " au BufRead,BufNewFile *.scss set filetype=css.scss
    au BufRead,BufNewFile *.sass set filetype=sass
    " au BufRead,BufNewFile *.sass set filetype=css.sass

    " jk, jj or kk  AS A ESC (as capslock in my systms is rmaped to esc, thre is no more need for this)
    imap jk <esc>

    " Auto save on focus lost
    au FocusLost * :wa

    " Stop that stupid window from popping up:
    map q: :q

    " Timeout for pressing key sequences
    set notimeout
    set ttimeout

    " Enable mouse, useful for window resizing
    set mouse=vn

    " Set history
    set history=900

    " Set <so> lines to the cursor and relative numbers
    set so=5

    " Set relativenumber
    " Automatic toggling between line number modes
    " Normal/Visual mode produce hybrid line numbers,
    " Insert relative line numbers
    set number relativenumber

    augroup numbertoggle
        autocmd!
        autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END

    " Areas of the screen where the splits should occur
    set splitbelow
    set splitright

    " Don't redraw while executing macros (good performance config)
    set lazyredraw

    " For regular expressions turn magic on
    set magic

    " No annoying sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500

    set encoding=utf8

    " Use Unix as the standard file type
    set ffs=unix,dos,mac

    " fugitive Gdiff vertically
    set diffopt+=vertical

    " auto change dir to dir of current file. Possible some plugins compatibility issue
    " set autochdir


" <COLORS>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    syntax enable
    try
    colorscheme gruvbox
    catch
    endtry

    set background=dark
    hi Normal ctermbg=0 guibg=#131313
    hi ColorColumn ctermbg=0 guibg=#303030
    hi LineNr ctermbg=0 guibg=#3C3836

    if has("patch-7.4.710")
        set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
    else
        set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
    endif

    " show white spaces
    set list

    " Set extra options when running in GUI mode
    if has("gui_running")
        set guioptions-=T
        set guioptions-=e
        set t_Co=256
        set guitablabel=%M\ %t
    endif

    " Fix background in tmux
    set t_ut=

" <TAB BAR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    hi! tab_bar_bg     guifg=#5f5f5f guibg=#a8a8a8 cterm=none gui=none ctermfg=59 ctermbg=100 
    hi! tab_bg         guifg=#5f5f5f guibg=#c8c8c8 cterm=none gui=none ctermfg=59 ctermbg=100 
    hi! tab_active_bg  guifg=#5f5f5f guibg=#ffaf00 cterm=none gui=none ctermfg=59 ctermbg=214 

    source $VIM/func/Tabline.vim
    set tabline=%!Tabline()


" <STATUSLINE>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    source $VIM/func/StatuslineGit.vim


    hi User1 guibg=#FFAF00 guifg=#222222
    hi User2 guibg=#504945  guifg=#191919
    hi User3 guibg=#A8A8A8 guifg=#222222

    set statusline=
    " Name of the current function (needs taglist.vim)
    " set statusline +=\ [Fun(%{Tlist_Get_Tagname_By_Line()})]
    " set statusline +=\ [Fun(%{tagbar#currenttag('%s','')})]
    set statusline+=\ %#warningmsg#
    set statusline+=\ %{SyntasticStatuslineFlag()}
    set statusline+=\ %2*%y
    set statusline+=\ %p%%
    set statusline+=\[%L]
    set statusline+=\ %l:%c
    set statusline+=\ %=
    set statusline+=\ %1*\ %.35{getcwd()}\ %2*
    set statusline+=\ %3*\ %{StatuslineGit()}\ %2*
    set statusline+=\ %1*\ %f%m
    set statusline+=\ %*
    set statusline+=\

" <FILES, BACKUPS AND UNDO>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Turn backup off, since most stuff is in SVN, git et.c anyway...
    set nobackup
    set nowb
    set noswapfile

    " Set to auto read when a file is changed from the outside
    set autoread

" <TEXT AND INDENT RELATED>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Use spaces instead of tabs
    set expandtab

    " Be smart when using tabs ;)
    set smarttab

    " 1 tab == 2 spaces
    set shiftwidth=4
    set tabstop=4
    set expandtab

    " Line break on 500 characters
    set lbr
    set tw=500

    set ai "Auto indent
    set si "Smart indent
    set wrap "Wrap lines

" <VISUAL MODE>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " highlight in visual stay
    vnoremap > >gv
    vnoremap < <gv

    " This way v replaces viw, vaw, vi", va", vi(, va(, vi[, va[, vi{, va{, vip, vap, vit, vat, ... You get the idea.
    vmap v <Plug>(expand_region_expand)
    vmap <C-v> <Plug>(expand_region_shrink)

" <MOVING AROUND, TABS, WINDOWS AND BUFFERS>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Treat long lines as break lines (useful when moving around in them)
    map j gj
    map k gk

    "split navigations
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

    " fullscreen window ',z'
    nnoremap <leader>z :tabnew %<CR>
    nnoremap <leader>b :Buffers<CR>

" <FOLDING>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Enable folding
    " set foldmethod=manual
    set foldmethod=indent
    " set foldmethod=expr
    " expresion to fold paragrafs with two empty lines
    set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'^\\s*$'&&getline(v:lnum+2)=~'\\S'?'<1':1
    " modeline version (escape colon's)
    " // vim: foldmethod=expr foldexpr=getline(v\:lnum)=~'^\\s*$'&&getline(v\:lnum+1)=~'^\\s*$'&&getline(v\:lnum+2)=~'\\S'?'<1'\:1
    " set foldmethod=marker
    " set foldmethod=syntax
    " set foldmethod=diff

    " set foldmarker=,}}}
    set foldlevel=9

    " Enable folding with the spacebar
    nnoremap <Leader>f za

    " Add a bit extra margin to the left
    set foldcolumn=5

" <SEARCH>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Ignore case when searching
    set ignorecase
    " When searching try to be smart about cases
    set smartcase
    " Highlight search results
    set hlsearch
    " Makes search act like search in modern browsers
    set incsearch
    " Show matching brackets when text indicator is over them
    set showmatch
    " How many tenths of a second to blink when matching brackets
    set mat=4

    " Disable highlight till next search ',/'
    map <silent> <leader>/ :noh<cr>

    " useful when studying strange source code.
    source $VIM/func/AutoHighlightToggle.vim
    nnoremap <leader>hh :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

    " search visual selected '//'
    vnoremap // y/<C-R>"<CR>

    " selecting/searching yanked text 'gp'
    map gp `[v`]
    map g/ /<C-r>"

    " Highlight yanked
        nnoremap <silent> <? :let @/=substitute(escape(@", '\\/.*$^~[]'), '\n', '\\n', 'g')<CR>:set hlsearch<cr> 

    " Search selected
    " todo: I like to make it behave like 'Highlight yanked' above
    vnoremap <silent> * :<C-U>
                \let old_reg=getreg('"')<bar>
                \let old_regmode=getregtype('"')<cr>
                \gvy/<C-R><C-R>=substitute(
                \escape(@", '\\/.*$^~[]'), '\n', '\\n', 'g')<cr><cr>
                \:call setreg('"', old_reg, old_regmode)<cr>
                \<S-n>

" <PRODUCTIVITY, KEY BINDINGS >
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Type ',,' to save file (a lot faster than ':w<Enter>'):
    nnoremap <Leader><Leader> :w<CR>

    " save ',s' and open session with 'vim -S'
    nnoremap <leader>s :mksession!<CR>

    " Type ',q' to quit file
    nnoremap <Leader>q :q<CR>

    " Copy & paste to system clipboard with ',p' and ',y':
    vmap <Leader>y "+y
    vmap <Leader>d "+d
    nmap <C-c> "+p
    nmap <C-C> "+P

    " Open vimrc with ',ev'
    nnoremap <leader>ev :tabnew $vimrc<CR>
    nnoremap <leader>ec :source %<CR>:echom 'SOURCE current file'<CR>
    nnoremap <leader>es :source $vimrc <CR>:echom 'SOURCE vimrc'<CR>
    " auto reload vimrc
    " bug: it reloadnig only in vimrc, not in source's
    augroup reload_vimrc
        autocmd!
        autocmd BufWritePost $vimrc source $vimrc | echom "SOURCE ".$vimrc
    augroup END

    " cd to current file dir, only current window
    nnoremap <silent> <leader>cd :lcd %:p:h<CR>

    " F3: Toggle list (display unprintable characters).
    nnoremap <F8> :set list!<CR>
    imap <F8> <c-o>:set list!<CR>

    " Toggle spell check locally
    nnoremap <F7> :setlocal spell! spell?<CR>
    imap <F7> <c-o>:setlocal spell! spell?<CR>

    " remove html tag, keep content
    map <leader>dt "aditcat<C-x><C-r>a<ESC>

    " remove white spaces on end line
    map <leader>sp :%s/\s\+$//ge<CR>:echomsg "white space cleaing"<cr>

    " get git branch go into insert mode.
    map <leader>gb :0r!git rev-parse --abbrev-ref HEAD<CR>A:<SPACE>

    " popup selection (autocompleate)
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" <CUSTOM VIMRC>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Override global cfg in '~/.vim/custom.vimrc'
    " This file is in .gitignore.
    " It is for local machine specific adjustments.
    if !empty(glob(customConfig))
        exe 'source' . customConfig
    else
        echom "Creating " . customConfig
        " call !mkdir customConfig
        silent exe '!touch '.customConfig
    endif

