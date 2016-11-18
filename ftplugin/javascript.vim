let s:lcd = fnameescape(getcwd())
silent! exec "lcd" expand('%:p:h')
let s:eslint_path = system('npm-which eslint')
exec "lcd" s:lcd
let b:syntastic_javascript_eslint_exec = strpart(s:eslint_path, 0, strlen(s:eslint_path) - 1)
" let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
