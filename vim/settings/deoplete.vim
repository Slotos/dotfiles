" Use deoplete.

let g:acp_enableAtStartup = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_smart_case = 1

" Default # of completions is 100, that's crazy.
let g:deoplete#max_list = 5

" Set minimum syntax keyword length.
let g:deoplete#auto_completion_start_length = 3

" Map standard Ctrl-N completion to Ctrl-Space
inoremap <C-Space> <C-n>

" Define keyword.
if !exists('g:deoplete#keyword_patterns')
  let g:deoplete#keyword_patterns = {}
endif
let g:deoplete#keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
