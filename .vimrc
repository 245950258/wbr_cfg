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


set rtp+=~/.vim/bundle/Vundle.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 设置开始
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EMACS verilog-mode Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map ta  :call EmacsBatchAuto()<CR>
map tb  :call EmacsBatchDeleteAuto()<CR>

function EmacsBatchAuto()
  !emacs --batch % -f verilog-batch-auto -q -script ~/.emacs
endfunction

function EmacsBatchDeleteAuto()
  !emacs --batch % -f verilog-batch-delete-auto -q -script ~/.emacs
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EMACS verilog-mode End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAGBAR verilog-mode Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <F4> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAGBAR verilog-mode End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

