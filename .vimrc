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

"*****************************************************************************
" Add Header Begin
"*****************************************************************************
"新建.c, .h, .sh, .jave, .scala文件, 自动插入文件头
autocmd BufNewFile *.v     exec ":call VTitle()"
autocmd BufNewFile *.sv    exec ":call SVTitle()"
autocmd BufNewFile *.scala exec ":call SCTitle()"
autocmd BufNewFile *.c     exec ":call CTitle()"
autocmd BufNewFile *.java  exec ":call JAVATitle()"

func VTitle()
  if (&filetype == 'verilog')
    call setline(1, "\// -----------------------------------------------------")
    call setline(2, "\// Copyright 2021. All Rights Reserved.")
    call setline(3, "\// -----------------------------------------------------")
    call setline(4, "\// File Name : ".expand("%"))
    call setline(5, "\// Author    : Wu Bingrui")
    call setline(6, "\// Created   : ".strftime("%c"))
    call setline(7, "\// -----------------------------------------------------")
  endif
endfunc

func SVTitle()
  if (&filetype == 'systemverilog')
    call setline(1, "\// -----------------------------------------------------")
    call setline(2, "\// Copyright 2021. All Rights Reserved.")
    call setline(3, "\// -----------------------------------------------------")
    call setline(4, "\// File Name : ".expand("%"))
    call setline(5, "\// Author    : Wu Bingrui")
    call setline(6, "\// Created   : ".strftime("%c"))
    call setline(7, "\// -----------------------------------------------------")
  endif
endfunc

func SCTitle()
  if (&filetype == 'scala')
    call setline(1, "\// -----------------------------------------------------")
    call setline(2, "\// Copyright 2021. All Rights Reserved.")
    call setline(3, "\// -----------------------------------------------------")
    call setline(4, "\// File Name : ".expand("%"))
    call setline(5, "\// Author    : Wu Bingrui")
    call setline(6, "\// Created   : ".strftime("%c"))
    call setline(7, "\// -----------------------------------------------------")
  endif
endfunc

func CTitle()
  if (&filetype == 'c')
    call setline(1, "\// -----------------------------------------------------")
    call setline(2, "\// Copyright 2021. All Rights Reserved.")
    call setline(3, "\// -----------------------------------------------------")
    call setline(4, "\// File Name : ".expand("%"))
    call setline(5, "\// Author    : Wu Bingrui")
    call setline(6, "\// Created   : ".strftime("%c"))
    call setline(7, "\// -----------------------------------------------------")
  endif
endfunc

func JAVATitle()
  if (&filetype == 'java')
    call setline(1, "\// -----------------------------------------------------")
    call setline(2, "\// Copyright 2021. All Rights Reserved.")
    call setline(3, "\// -----------------------------------------------------")
    call setline(4, "\// File Name : ".expand("%"))
    call setline(5, "\// Author    : Wu Bingrui")
    call setline(6, "\// Created   : ".strftime("%c"))
    call setline(7, "\// -----------------------------------------------------")
  endif
endfunc

"*****************************************************************************
" Add Header End
"*****************************************************************************

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add Comments Begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

func! AddCommentHeader(lnum) abort
  let comment_header =
                \[
                \'  //******************************************************',
                \'  //**** Comment ****',
                \'  //******************************************************'
                \]
  let lnum = a:lnum < 1 ? line('.') : a:lnum

  call append(lnum, comment_header)
endfunc

func! AddCommentContinuity(lnum) abort
  let comment_continuity =
                \[
                \'/**',
                \' * ',
                \' */'
                \]
  let lnum = a:lnum < 1 ? line('.') : a:lnum

  call append(lnum, comment_continuity)
endfunc

nnoremap gci :<C-U>call AddCommentHeader(v:count)<CR>
nnoremap gco :<C-U>call AddCommentContinuity(v:count)<CR>

" 生成文件名和当前时间
autocmd BufNewFile * normal G

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add Comments End
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Complete Begin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set completeopt=longest, menu
set completeopt=longest
ab __seq always @(posedge clk or negedge rstn) begin<Enter>if(rstn==1'b0) begin<Enter>/*AUTORESET*/<Enter>end<Enter>else begin<Enter>end<Enter>end<Enter>
ab __comb always @(/*AUTOSENSE*/) begin<Enter>end<Enter>
ab __chi import chisel3._<Enter>import chisel3.util._<Enter>import chisel3.core.DontCare<Enter>import chisel3.experimental.dontTouch
ab __mod module example (/*AUTOARG*/);<Enter>/*AUTOINPUT*/<Enter>/*AUTOOUTPUT*/<Enter>/*AUTOREG*/<Enter>endmodule<Enter>// Local Variables:<Enter>// verilog-library-directories:("." "subdir" "subdirs")<Enter>// End:
ab __new inst x_inst(/*AUTOINST*/);
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Complete End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
  Plugin 'preservim/tagbar' "
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
" AirLine 设置开始
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
" 映射切换buffer的键位
nnoremap <C-Tab> :bp<CR>
nnoremap <C-s-Tab> :bn<CR>
set guifont=DroidSansMono\ Nerd\ Font\ Mono\ Italic\ 12
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AirLine 设置结束
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree 设置开始
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <Nerdtree>-------------------{
    ">> Basic settings
        let g:NERDTreeChDirMode = 2  "Change current folder as root
        autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif

    ">> UI settings
        let NERDTreeQuitOnOpen=1   " Close NERDtree when files was opened
        let NERDTreeMinimalUI=1    " Start NERDTree in minimal UI mode (No help lines)
        let NERDTreeDirArrows=1    " Display arrows instead of ascii art in NERDTree
        let NERDTreeChDirMode=2    " Change current working directory based on root directory in NERDTree
        let g:NERDTreeHidden=1     " Don't show hidden files
        let NERDTreeWinSize=30     " Initial NERDTree width
        let NERDTreeAutoDeleteBuffer = 1  " Auto delete buffer deleted with NerdTree
        "let NERDTreeShowBookmarks=0   " Show NERDTree bookmarks
        let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']   " Hide temp files in NERDTree
        "let g:NERDTreeShowLineNumbers=1  " Show Line Number
    		" Open Nerdtree when there's no file opened
        "autocmd vimenter * if !argc()|NERDTree|endif
    		" Or, auto-open Nerdtree
        "autocmd vimenter * NERDTree
    		" Close NERDTree when there's no other windows
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " Customize icons on Nerdtree
        let g:NERDTreeDirArrowExpandable = '▸'
        let g:NERDTreeDirArrowCollapsible = '▾'

    ">> NERDTREE-GIT
        " Special characters
    let g:NERDTreeGitStatusIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
    \ }

    ">> NERDTree-Tabs
        "let g:nerdtree_tabs_open_on_console_startup=1 "Auto-open Nerdtree-tabs on VIM enter
    ">> Nerdtree-devicons
        "set guifont=DroidSansMono_Nerd_Font:h11
    ">> Nerdtree-syntax-highlighting
        "let g:NERDTreeDisableFileExtensionHighlight = 1
        "let g:NERDTreeDisableExactMatchHighlight = 1
        "let g:NERDTreeDisablePatternMatchHighlight = 1
        "let g:NERDTreeFileExtensionHighlightFullName = 1
        "let g:NERDTreeExactMatchHighlightFullName = 1
        "let g:NERDTreePatternMatchHighlightFullName = 1
        "let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
        "let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
        "let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
" }
" 映射开启NERDTree
map <F5> :NERDTreeMirror<CR>
map <F5> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree 设置结束
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
nmap <F4> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TAGBAR verilog-mode End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

