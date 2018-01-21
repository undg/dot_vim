" <VIM-PLUG PLUGINS> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  call plug#begin('~/.vim/plugged')

  Plug 'tpope/vim-sensible' " vim-plug plugin manager

  " GIT PLUGINS
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter' " <plGITGUTTER> git dif in gutter(column line number)

  " Productivity
  Plug 'terryma/vim-multiple-cursors'

  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' } " <plNERDTREE>
  Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeTabsToggle' }

  Plug 'vim-scripts/YankRing.vim' "<plYankRing>
  Plug 'ctrlpvim/ctrlp.vim' " <plCTRLP>

  " YCM is instaled globaly for arch from aur
  " Plug 'Valloric/YouCompleteMe' " <plYOUCOMPLETEME>
  Plug 'w0rp/ale' "linting

  Plug 'chrisbra/Colorizer', { 'on': 'ColorToogle' }
  Plug 'blindFS/vim-colorpicker'
  " Plug 'davidhalter/jedi-vim' " python

  Plug 'tpope/vim-commentary'
  Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
  Plug 'tmhedberg/SimpylFold' " <plSIMPLYFOLD>
  Plug 'dhruvasagar/vim-table-mode' " <plTABLE-MODE>

  Plug 'christoomey/vim-tmux-navigator' " <plTMUXNAVIGATOR>
  Plug 'benmills/vimux' " <plVIMUX>
  Plug 'blueyed/vim-diminactive'

  Plug 'terryma/vim-expand-region' " <plEXPANDREGION>

  Plug 'djoshea/vim-autoread'

  " html plugins
    Plug 'mattn/emmet-vim'

  " SYNTAX
  Plug 'jelera/vim-javascript-syntax'
  " Plug 'ervandew/supertab'
  " AUTO ADD CLOUSING
    Plug 'Raimondi/delimitMate' "<plDELIMITMATE>
    Plug 'tmhedberg/matchit'

  " Theme
  Plug 'morhetz/gruvbox'
  " Plug 'altercation/vim-colors-solarized'

  call plug#end()
" }}}

" <SETTINGS> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Enable filetype plugins
    filetype plugin on
    filetype indent on
  
  " jk as a ESC
    imap jk <esc>

  " Auto save on focus lost
    au FocusLost * :wa

  " Stop that stupid window from popping up:
    map q: :q

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

  " Change leader key
    let mapleader=","

  " fugitive Gdiff verticaly
  set diffopt+=vertical

  " autoreload vimrc
    augroup reload_vimrc " {
      autocmd!
      autocmd BufWritePost $MYVIMRC source $MYVIMRC
    augroup END " }
" }}}

" <COLORS> {{{
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
" }}}

" <FILES, BACKUPS AND UNDO> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Turn backup off, since most stuff is in SVN, git et.c anyway...
    set nobackup
    set nowb
    set noswapfile

  " Set to auto read when a file is changed from the outside
    set autoread
" }}}

" <TEXT, TAB AND INDENT RELATED> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Use spaces instead of tabs
    set expandtab

  " Be smart when using tabs ;)
    set smarttab

  " 1 tab == 2 spaces
    set shiftwidth=2
    set tabstop=2

  " Linebreak on 500 characters
    set lbr
    set tw=500

    set ai "Auto indent
    set si "Smart indent
    set wrap "Wrap lines
" }}}

" <VISUAL MODE> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " highlight in visual stay
    vnoremap > >gv
    vnoremap < <gv

  " This way v replaces viw, vaw, vi", va", vi(, va(, vi[, va[, vi{, va{, vip, vap, vit, vat, ... you get the idea.
    vmap v <Plug>(expand_region_expand)
    vmap <C-v> <Plug>(expand_region_shrink)
" }}}

" <MOVING AROUND, TABS, WINDOWS AND BUFFERS> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Treat long lines as break lines (useful when moving around in them)
    map j gj
    map k gk

  " Map ; to : 
    map ; :

  " Disable highlight when <leader><cr> is pressed
    map <silent> <leader><cr> :noh<cr>

  "split navigations
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>
" }}}

" <FOLDING> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Enable folding
    " set foldmethod=manual
    set foldmethod=indent
    " set foldmethod=expr 
    " set foldmethod=marker 
    " set foldmethod=syntax 
    " set foldmethod=diff 

    " set foldmarker={{{,}}}
    set foldlevel=9

  " Enable folding with the spacebar
    nnoremap <Leader>f za

  " Want to see the docstrings for folded code?
    let g:SimpylFold_docstring_preview=1 " <plSIMPLYFOLD>

  " Add a bit extra margin to the left
    set foldcolumn=5

" }}}

" <SEARCH> {{{
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

" }}}

" <HIGHLIGHT ALL INSTANCES OF WORD UNDER CURSOR, WHEN IDLE> {{{
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
" }}}

" <PRODUCTIVITY, KEYBINDINGS > {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Type ',w' or ',,' to save file (a lot faster than ':w<Enter>'):
    nnoremap <Leader>w :w<CR>
    nnoremap <Leader>, :w<CR>

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

  " fulscreen window
    nnoremap <leader>z :tabnew %<CR>
" }}}

" <PLUGINS SETTINGS> {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " <plVIMUX RUN COMMAND IN TMUX PANE> {{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " map <f8> :call VimuxRunCommand("clear; python3 -i " . bufname("%"))<CR>
    map <f9> :call VimuxRunCommand("./" . bufname("%"))<CR>

    " Run the current file with rspec
    map <Leader>rb :call VimuxRunCommand("rspec " . bufname("%"))<CR>

    " Prompt for a command to run
    map <Leader>r :VimuxPromptCommand<CR>

    " Run last command executed by VimuxRunCommand
    map <Leader>rr :VimuxRunLastCommand<CR>

    " Inspect runner pane
    map <Leader>ri :VimuxInspectRunner<CR>

    " Close vim tmux runner opened by VimuxRunCommand
    map <Leader>rq :VimuxCloseRunner<CR>

    " Interrupt any command running in the runner pane
    map <Leader>rx :VimuxInterruptRunner<CR>

    " Zoom the runner pane (use <bind-key> z to restore runner pane)
    map <Leader>rz :call VimuxZoomRunner()<CR>
  " }}}

  " <plNERDTREE> {{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " F2 to open/close sidebar with folders/files
      map <F2> :NERDTreeTabsToggle<CR>

    " If vim opened empty open NERDTree
    if empty(argv())
        au VimEnter * NERDTree
    endif

    " Show hidden files
      " let NERDTreeShowHidden=1

    " Open NERDTree on gvim/macvim startup (1)
      " let g:nerdtree_tabs_open_on_gui_startup = 1

    " Open NERDTree on console vim startup (0)
      " let g:nerdtree_tabs_open_on_console_startup = 0

    " Do not open NERDTree if vim starts in diff mode (1)
      " let g:nerdtree_tabs_no_startup_for_diff = 1

    " On startup - focus NERDTree when opening a directory, focus the file if editing a specified file. When set to `2`, always focus file after startup. (1)
      " let g:nerdtree_tabs_smart_startup_focus = 1

    " Open NERDTree on new tab creation (if NERDTree was globally opened by :NERDTreeTabsToggle) (1)
      " let g:nerdtree_tabs_open_on_new_tab = 1

    " Unfocus NERDTree when leaving a tab for descriptive tab names (1)
      " let g:nerdtree_tabs_meaningful_tab_names = 1

    " Close current tab if there is only one window in it and it's NERDTree (1)
      " let g:nerdtree_tabs_autoclose = 1

    " Synchronize view of all NERDTree windows (scroll and cursor position) (1)
      " let g:nerdtree_tabs_synchronize_view = 1

    " Synchronize focus when switching tabs (focus NERDTree after tab switch if and only if it was focused before tab switch) (1)
      " let g:nerdtree_tabs_synchronize_focus = 1

    " When switching into a tab, make sure that focus is on the file window, not in the NERDTree window. (Note that this can get annoying if you use NERDTree's feature "open in new tab silently", as you will lose focus on the NERDTree.) (0)
      " let g:nerdtree_tabs_focus_on_files = 0
      
    " NERDTree-git-plugin
      let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }
  " }}}

  " <plCTRLP> {{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let g:ctrlp_open_new_file = 't'
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|tmp|node_modules|dist)$',
  \ 'file': '\v\.(exe|so|dll|swp|zip|vim)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
  " }}}

  "<plYankRing> {{{
    nnoremap <silent> <F10> :YRShow<CR> 
    let g:yankring_replace_n_pkey = '<A-p>'
    let g:yankring_replace_n_nkey = '<A-n>'
  "}}}
  
  " <plYOUCOMPLETEME AUTOCOMPLETE> {{{
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
  " }}}

  " <plGITGUTTER> {{{
    " KEY MAPPINGS gitgutter {{{
      " To change the hunk-jumping maps (defaults shown):
        nmap [h <Plug>GitGutterPrevHunk
        nmap ]h <Plug>GitGutterNextHunk

      " To change the hunk-staging/undoing/previewing maps (defaults shown):
        nmap <Leader>hs <Plug>GitGutterStageHunk
        nmap <Leader>hu <Plug>GitGutterUndoHunk
        nmap <Leader>hp <Plug>GitGutterPreviewHunk

      " To change the hunk text object maps (defaults shown):
        " omap ic <Plug>GitGutterTextObjectInnerPending
        " omap ac <Plug>GitGutterTextObjectOuterPending

      " To change the hunk text object maps (defaults shown):
        " xmap ic <Plug>GitGutterTextObjectInnerVisual
        " xmap ac <Plug>GitGutterTextObjectOuterVisual

      " To disable all key maps:
        " let g:gitgutter_map_keys = 0
    " }}}

    " SETTINGS gitgutter {{{
      " To use a custom grep command
      " To use a custom invocation for grep, use this:
        " let g:gitgutter_grep_command = 'grep --color=never -e'

      " To turn off vim-gitgutter by default
        " let g:gitgutter_enabled = 0

      " To turn off signs by default
      " Note that the sign column will still be present if you have line highlighting switched on.
        " let g:gitgutter_signs = 0

      " To turn on line highlighting by default
        " let g:gitgutter_highlight_lines = 1

      " To stop vim-gitgutter running in realtime
        " let g:gitgutter_realtime = 0

      " To stop vim-gitgutter running eagerly
        " let g:gitgutter_eager = 0

      " To turn off asynchronous updates
      " By default diffs are run asynchronously.  To run diffs synchronously
      " instead:
        " let g:gitgutter_async = 0
    " }}}

  " }}}

  " <plEXPANDREGION> {{{
    vmap v <Plug>(expand_region_expand)
    vmap <C-v> <Plug>(expand_region_shrink)
  " }}}
  
  " <plTMUXNAVIGATOR> {{{
    " This will execute the update command on leaving vim to a tmux pane. Default is Zero
      let g:tmux_navigator_save_on_switch = 1
  " }}}
  
  " <plTABLE> {{{
    map <silent> <leader>tb :TableModeToggle<CR> 
  " }}}
  
  "<plDELIMITMATE> {{{
    let delimitMate_expand_cr=1
  "}}}
  
" }}}
