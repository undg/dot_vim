" Return current branch name to be used in status line.
function! GitFileStatus()
    return system("[[ -n \"$(git status --porcelain " . shellescape(expand("%")) . " 2>/dev/null )\" ]] && echo -n ✰ ")
endfunction

let s:status = GitFileStatus()

function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?'['.l:branchname.s:status.']':''
endfunction

function! GitBranch()
    return FugitiveHead()
    " return FugitiveStatusline()
    " return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction


augroup reload_vimrc
    autocmd!
    autocmd BufWritePost let s:gitFileStatus = GitFileStatus()
augroup END
