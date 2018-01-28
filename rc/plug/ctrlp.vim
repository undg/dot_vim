let g:ctrlp_open_new_file = 't'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
  " 'c' - the directory of the current file.
  " 'a' - the directory of the current file, unless it is a subdirectory of the cwd
  " 'r' - the nearest ancestor of the current file that contains one of these directories or files: .git .hg .svn .bzr _darcs
  " 'w' - modifier to "r": start search from the cwd instead of the current file's directory
  " 0 or '' (empty string) - disable this feature.

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|tmp|node_modules|dist)$',
  \ 'file': '\v\.(exe|so|dll|swp|zip|vim)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
