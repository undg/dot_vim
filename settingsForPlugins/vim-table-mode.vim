" For Markdown-compatible tables use
let g:table_mode_corner='|'

" To get ReST-compatible tables use
" let g:table_mode_corner_corner='+'
" let g:table_mode_header_fillchar='='

map <silent> <leader>tb :TableModeToggle<CR> 

map <silent> <leader>ta :TableAddFormula<CR> 
map <silent> <leader>tc :TableEvalFormulaLine<CR> 
