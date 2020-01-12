" highlight in visual stay
vnoremap > >gv
vnoremap < <gv

" This way v replaces viw, vaw, vi", va", vi(, va(, vi[, va[, vi{, va{, vip, vap, vit, vat, ... You get the idea.
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

