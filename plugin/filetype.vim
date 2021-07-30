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
" Add Header
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
