""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 设置开始
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
  Plugin 'zhuzhzh/verilog_emacsauto.vim'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'Align'
	Plugin 'exvim/ex-autocomplpop'
	Plugin 'scrooloose/nerdtree'          " File tree manager
	Plugin 'jistr/vim-nerdtree-tabs'      " enhance nerdtree's tabs
	Plugin 'ryanoasis/vim-devicons'       " add beautiful icons besides files
  Plugin 'Xuyuanp/nerdtree-git-plugin'  " display git status within Nerdtree
  Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' " enhance devicons
  "Plugin 'preservim/tagbar' "
	"Plugin 'MarcWeber/vim-addon-mw-utils'
  "Plugin 'tomtom/tlib_vim'
  "Plugin 'garbas/vim-snipmate'
  "Plugin 'honza/vim-snippets'
call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 设置结束
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
