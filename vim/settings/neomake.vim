"mark syntax errors with :signs
let g:neomake_place_signs=1
"show the error list automatically
let g:neomake_open_list=2

" Default to eslint. If you need jshint, you can override this in
" ~/.vimrc.after
let g:neomake_javascript_enabled_makers = ['eslint']

" Make proselint check git commit messages
let g:neomake_gitcommit_enabled_makers = ['proselint']
let g:neomake_gitcommit_proselint_maker = {
      \ 'errorformat': '%f:%l:%c: %m'
      \ }

" run Neomake on buffer write
autocmd! BufWritePost * Neomake
