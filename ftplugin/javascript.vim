if (!exists('b:eslint_path_cache'))
    let s:lcd = fnameescape(getcwd())
    silent! exec "lcd" expand('%:p:h')
    let s:eslint_path = system('npm-which eslint')
    exec "lcd" s:lcd
    let b:eslint_path_cache = strpart(s:eslint_path, 0, strlen(s:eslint_path) - 1)
endif
let b:syntastic_javascript_eslint_exec = b:eslint_path_cache
