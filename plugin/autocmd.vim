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
" AutoCmd
"*****************************************************************************
" 让配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" generally restores the last cursor position of a file I opened with vim
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif

if has("autocmd")

    " If the filetype is Makefile then we need to use tabs
    " So do not expand tabs into space.
    autocmd FileType make	set noexpandtab

endif

if has("autocmd")
	" Clear all spaces before <Enter> before save files
	autocmd BufWritePre * :%s/\s\+$//e
endif
