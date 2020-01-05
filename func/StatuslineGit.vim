" Return current branch name to be used in status line.

function! StatuslineGit()
    let l:branchname = GitBranch()
    let l:status = GitFileStatus()
    return strlen(l:branchname) > 0?'['.l:branchname.l:status.']':''
endfunction

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! GitFileStatus()
    return system("[[ -n \"$(git status --porcelain " . shellescape(expand("%")) . " 2>/dev/null )\" ]] && echo -n ✰ ")
endfunction
