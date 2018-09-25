" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
  execute 'curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

set rtp+=~/.vim/plugs

call plug#begin()

" YADR's plugs are split up by category into smaller files
" This reduces churn and makes it easier to fork. See
" ~/.vim/plugs/ to edit them:
runtime ruby.plug
runtime language_tools.plug
runtime git.plug
runtime appearance.plug
runtime textobjects.plug
runtime search.plug
runtime project.plug
runtime vim-improvements.plug
runtime completion.plug
runtime elixir.plug
runtime pony.plug
runtime pony.plug

" The plugins listed in ~/.vim/.plugs.local will be added here to
" allow the user to add vim plugins to yadr without the need for a fork.
if filereadable(expand("~/.yadr/vim/.plugs.local"))
  source ~/.yadr/vim/.plugs.local
endif

call plug#end()
