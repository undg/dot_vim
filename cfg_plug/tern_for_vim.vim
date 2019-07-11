nnoremap <leader>td :TernDoc<CR>
nnoremap <leader>tb :TernDocBrowse<CR>
" emmet is using this key binding?
" nnoremap <leader>tt :TernType<CR>
nnoremap <leader>ttp :TernType<CR>
nnoremap <leader>tD :TernDef<CR>
"    map <leader>tp :TernDefPreview<CR> 
nnoremap <leader>tpd :TernDefPreview<CR>
nnoremap <leader>tsd :TernDefSplit<CR>
nnoremap <leader>ttd :TernDefTab<CR>
nnoremap <leader>tr :TernRefs<CR>
nnoremap <leader>tR :TernRename<CR> 



" Defaults to "no". Can be set to "on_move" to update the argument
" hints whenever the cursor moves, or "on_hold" to do it whenever the
" cursor is held still for a period that depends on the 'updatetime'
" setting. "on_move" can reduce responsiveness on slow systems or big
" codebases. "on_hold" probably requires you to set 'updatetime' to
" something smaller than the default of 4 seconds.

" If you do not see argument hints while in insert mode you might
" have to disable the mode indication (:set noshowmode). For more
" information see 'noshowmode'.
set updatetime=1
let tern_show_argument_hints="on_hold"



" Defaults to 0. Can be set to 1 to display function signatures in the completion
" menu. Function signatures include parameter names, their type, and whether the
" parameter is optional.
let tern_show_signature_in_pum=1



" Defaults to |<LocalLeader>|. Specifies prefix which is used to define default
" key mappings.

" let tern_map_prefix



" Defaults to 0. Can be set to 1 to enable the following key mappings. By default
" these mappings are prefixed with |<LocalLeader>|. You can change this prefix
" with |tern_map_prefix| option.

"     *<LocalLeader>tD*   |:TernDoc|
"     *<LocalLeader>tb*   |:TernDocBrowse|
"     *<LocalLeader>tt*   |:TernType|
"     *<LocalLeader>td*   |:TernDef|
"     *<LocalLeader>tpd*  |:TernDefPreview|
"     *<LocalLeader>tsd*  |:TernDefSplit|
"     *<LocalLeader>ttd*  |:TernDefTab|
"     *<LocalLeader>tr*   |:TernRefs|
"     *<LocalLeader>tR*   |:TernRename|

let tern_map_keys=0







" .tern-project example
"{
"    "libs": [
"        "browser",
"        "jquery",
"        "chai",
"        "react"
"    ],
"    "loadEagerly": [
"        "importantfile.js"
"    ],
"    "plugins": {
"        "node": { },
"        "es_modules": { },
"        "requirejs": {
"            "baseURL": "./",
"            "paths": {}
"        }
"    }
"}

