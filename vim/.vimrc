"                             /\             /\
"                            |`\\_,--="=--,_//`|
"                            \ ."  :'. .':  ". /
"                           ==)  _ :  '  : _  (==
"                             |>/O\   _   /O\<|
"                             | \-"~` _ `~"-/ |
"                            >|`===. \_/ .===`|<
"                      .-"-.   \==='  |  '===/   .-"-.
".--------------------{'. '`}---\,  .-'-.  ,/---{.'. '}-------------------.
" )                   `"---"`     `~-===-~`     `"---"`                  (
"(          __          __  _                                             )
" )         \ \        / / | |                                           (
"(           \ \  /\  / /__| | ___ ___  _ __ ___   ___                    )
" )           \ \/  \/ / _ \ |/ __/ _ \| '_ ` _ \ / _ \                  (
"(             \  /\  /  __/ | (_| (_) | | | | | |  __/                   )
" )             \/  \/ \___|_|\___\___/|_| |_| |_|\___|                  (
"(                                                                        )
" )                                                                      (
"(          __          __    ____  _             _____       _           )
" )         \ \        / /   |  _ \(_)           |  __ \     (_)         (
"(           \ \  /\  / /   _| |_) |_ _ __   __ _| |__) |   _ _           )
" )           \ \/  \/ / | | |  _ <| | '_ \ / _` |  _  / | | | |         (
"(             \  /\  /| |_| | |_) | | | | | (_| | | \ \ |_| | |          )
" )             \/  \/  \__,_|____/|_|_| |_|\__, |_|  \_\__,_|_|         (
"(                                           __/ |                        )
" )                                         |___/                        (
"'------------------------------------------------------------------------'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 设置开始
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
	Plugin 'dstein64/vim-startuptime'
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
	Plugin 'tomtom/tcomment_vim'
	Plugin 'mhinz/vim-startify'
	Plugin 'Yggdroot/indentLine'
	Plugin 'tomasr/molokai'
	Plugin 'joshdick/onedark.vim'
	Plugin 'morhetz/gruvbox'
	Plugin 'tpope/vim-fugitive'
	Plugin 'uguu-org/vim-matrix-screensaver'
	Plugin 'junegunn/vim-easy-align'
	"Plugin 'preservim/nerdcommenter'
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User 设置开始
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/plugin/wbr.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User 设置结束
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows gvim Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let &runtimepath.=',$HOME/.vim'
" set fileencodings=utf-8,gbk,big5
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows gvim End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAGBAR verilog-mode Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <F4> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAGBAR verilog-mode End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

