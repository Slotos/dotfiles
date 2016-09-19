" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
let g:ctrlp_map = ',t'
nnoremap <silent> ,t :FZF<CR>

" Additional mapping for buffer search
nnoremap <silent> ,b :Buffers<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path, making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
map ,ja :FZF app/assets<CR>
map ,jm :FZF app/models<CR>
map ,jc :FZF app/controllers<CR>
map ,jv :FZF app/views<CR>
map ,jh :FZF app/helpers<CR>
map ,jl :FZF lib<CR>
map ,jp :FZF public<CR>
map ,js :FZF spec<CR>
map ,jf :FZF fast_spec<CR>
map ,jd :FZF db<CR>
map ,jC :FZF config<CR>
map ,jV :FZF vendor<CR>
map ,jF :FZF factories<CR>
map ,jT :FZF test<CR>

"Cmd-Shift-(M)ethod - jump to a method (tag in current file)
"Ctrl-m is not good - it overrides behavior of Enter
nnoremap <silent> <D-M> :CtrlPBufTag<CR>

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R --quiet --fields=+il'
