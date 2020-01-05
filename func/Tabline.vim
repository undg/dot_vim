" tab bar 
" example of use:
    " hi! tab_bar_bg     guifg=#5f5f5f guibg=#a8a8a8 cterm=none gui=none ctermfg=59 ctermbg=100 
    " hi! tab_bg         guifg=#5f5f5f guibg=#c8c8c8 cterm=none gui=none ctermfg=59 ctermbg=100 
    " hi! tab_active_bg  guifg=#5f5f5f guibg=#ffaf00 cterm=none gui=none ctermfg=59 ctermbg=214 
    " set tabline=%!tabline()


function! Tabline()
    let s = ''
    let s .= '%#TAB_BAR_BG# '
    for i in range(tabpagenr('$'))
        let tab = i + 1
        let winnr = tabpagewinnr(tab)
        let buflist = tabpagebuflist(tab)
        let bufnr = buflist[winnr - 1]
        let bufname = bufname(bufnr)
        let bufmodified = getbufvar(bufnr, "&mod")

        let s .= '%' . tab . 'T'
        let s .= (tab == tabpagenr() ? '%#TAB_ACTIVE_BG#' : '%#TAB_BG#')
        let s .= ' ' . tab .'°'
        let s .= (bufname != '' ? fnamemodify(bufname, ':t')  : '[No Name]')

        if bufmodified
            let s .= '[+]'
        endif
        let s .= ' '
        let s .= '%#TAB_BAR_BG# '
    endfor

    let s .= '%#TAB_BAR_BG#'
    if (exists("g:tablineclosebutton"))
        let s .= '%=%999XX'
    endif
    return s
endfunction
