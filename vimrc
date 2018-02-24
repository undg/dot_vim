" Change leader key
  let mapleader=","

  
" <VIM-PLUG PLUGINS> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  call plug#begin('~/.vim/plugged')

  " DOWNLOAD VIM-PLUG IN CASE OF FRESH START
    if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

  Plug 'tpope/vim-sensible'

  " GIT PLUGINS
    Plug 'tpope/vim-fugitive'
    " git dif in gutter(column line number)
    Plug 'airblade/vim-gitgutter' 
    source ~/.vim/rc/plug/vim-gitgutter.vim

  " FILE MANAGERS
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    source ~/.vim/rc/plug/nerdtree.vim
    " Plug 'ctrlpvim/ctrlp.vim'
    " source ~/.vim/rc/plug/ctrlp.vim
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    source ~/.vim/rc/plug/fzf.vim

  " Productivity
    " Plug 'terryma/vim-multiple-cursors'
    Plug 'vim-scripts/YankRing.vim'
    source ~/.vim/rc/plug/yankring.vim
    Plug 'simeji/winresizer' " <C-e>

    " YCM is instaled globaly for arch from aur
    " Plug 'Valloric/YouCompleteMe'
    source ~/.vim/rc/plug/youcompleteme.vim
    "linting
    Plug 'w0rp/ale'

    Plug 'chrisbra/Colorizer' ", { 'on': 'ColorToogle' }
    Plug 'blindFS/vim-colorpicker'
    " Plug 'davidhalter/jedi-vim' " python

    Plug 'tpope/vim-commentary'
    Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
    Plug 'tmhedberg/SimpylFold'
    source ~/.vim/rc/plug/simplyfold.vim
    Plug 'dhruvasagar/vim-table-mode'
    source ~/.vim/rc/plug/vim-table-mode.vim " <,tb>

    Plug 'christoomey/vim-tmux-navigator'
    source ~/.vim/rc/plug/vim-tmux-navigator.vim
    Plug 'benmills/vimux'
    source ~/.vim/rc/plug/vimux.vim
    Plug 'blueyed/vim-diminactive'

    Plug 'terryma/vim-expand-region'
    source ~/.vim/rc/plug/vim-expand-region.vim
    Plug 'terryma/vim-smooth-scroll'
    source ~/.vim/rc/plug/vim-smooth-scroll.vim

    Plug 'djoshea/vim-autoread'

  " HTML
    Plug 'mattn/emmet-vim'
    source ~/.vim/rc/plug/emmet-vim.vim

  " SYNTAX
    Plug 'jelera/vim-javascript-syntax'
  " Plug 'ervandew/supertab'
  " AUTO ADD CLOUSING
    Plug 'Raimondi/delimitMate'
    source ~/.vim/rc/plug/delimate.vim
    Plug 'tmhedberg/matchit'
    " sass and cs3 syntax
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'hail2u/vim-css3-syntax'
    " PARENTHESES IN DIFF COLOR !!
    Plug 'luochen1990/rainbow'
    " SHOW INDENTATION
    Plug 'nathanaelkane/vim-indent-guides'
    source ~/.vim/rc/plug/vim-indent-guides.vim
    " Plug 'Yggdroot/indentLine' 

  " THEME
  Plug 'morhetz/gruvbox'
    source ~/.vim/rc/plug/gruvbox.vim
  " Plug 'altercation/vim-colors-solarized'

  call plug#end()


" <SETTINGS> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Enable filetype plugins
    filetype plugin on
    filetype indent on

 " filetype css if *.sass
    au BufRead,BufNewFile *.scss set filetype=scss.css
    au BufRead,BufNewFile *.sass set filetype=sass.css

  " jk and jj as a ESC
    imap jk <esc>
    imap jj <esc>
    imap kk <esc>

  " Auto save on focus lost
    au FocusLost * :wa

  " Stop that stupid window from popping up:
    map q: :q

  " Timeout for pressing key sequences
    set notimeout
    set ttimeout

  " Enable mouse, usefull for window resizing
    set mouse=a

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

  " fugitive Gdiff verticaly
  set diffopt+=vertical

  " autoreload vimrc
    augroup reload_vimrc " {
      autocmd!
      autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END " }


" <COLORS> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Enable syntax highlighting
    syntax enable 

    try
      colorscheme gruvbox
    catch
    endtry

    set background=dark

    set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
    set nolist

  " Set extra options when running in GUI mode
    if has("gui_running")
      set guioptions-=T
      set guioptions-=e
      set t_Co=256
      set guitablabel=%M\ %t
    endif

  " Fix background in tmux
    set t_ut=


" <FILES, BACKUPS AND UNDO> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Turn backup off, since most stuff is in SVN, git et.c anyway...
    set nobackup
    set nowb
    set noswapfile

  " Set to auto read when a file is changed from the outside
    set autoread


" <TEXT, TAB AND INDENT RELATED> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Use spaces instead of tabs
    set expandtab

  " Be smart when using tabs ;)
    set smarttab

  " 1 tab == 2 spaces
    set shiftwidth=2
    set tabstop=2
    set expandtab

  " Linebreak on 500 characters
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

  " This way v replaces viw, vaw, vi", va", vi(, va(, vi[, va[, vi{, va{, vip, vap, vit, vat, ... you get the idea.
    vmap v <Plug>(expand_region_expand)
    vmap <C-v> <Plug>(expand_region_shrink)


" <MOVING AROUND, TABS, WINDOWS AND BUFFERS> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Treat long lines as break lines (useful when moving around in them)
    map j gj
    map k gk

  " Map ; to : 
    map ; :

  " Disable highlight ',/'
    map <silent> <leader>/ :noh<cr>

  "split navigations
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

  " fulscreen window ',z'
    nnoremap <leader>z :tabnew %<CR>


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

  " Disable highlight till next search ',h'
    nnoremap <leader>h :noh<cr>

  " search visual selected '//'
  vnoremap // y/<C-R>"<CR>


" <HIGHLIGHT ALL INSTANCES OF WORD UNDER CURSOR, WHEN IDLE> 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" useful when studying strange source code.
" type ',hh' to toggle highlighting on/off.
  nnoremap <leader>hh :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
  function! AutoHighlightToggle()
    let @/ = ''
    if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
    else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
    endif
  endfunction


" <PRODUCTIVITY, KEYBINDINGS > 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Type ',w' or ',,' to save file (a lot faster than ':w<Enter>'):
    nnoremap <Leader>w :w<CR>
    nnoremap <Leader>, :w<CR>

  " Type ',q' to quit file
    nnoremap <Leader>q :q<CR>

  " Copy & paste to system clipboard with ',p' and ',y':
    vmap <Leader>y "+y
    vmap <Leader>d "+d
    nmap <Leader>p "+p
    nmap <Leader>P "+P
    vmap <Leader>p "+p
    vmap <Leader>P "+P

  " Open vimrc with ',ev'
    nnoremap <leader>ev :tabnew $MYVIMRC<CR>
    nnoremap <leader>eu :source $MYVIMRC<CR>
  
  " save ',s' and open sesion with 'vim -S'
    nnoremap <leader>s :mksession!<CR>
