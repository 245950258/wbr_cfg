"*****************************************************************************
" Hot Key
"*****************************************************************************
let mapleader=";"
" 定义快捷键到行首和行尾
nmap <Leader>1 ^
nmap <Leader>0 $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键刷新当前窗口内容
nmap <Leader>e :e<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

" 映射全选和复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
"map <F12> gg=G
" 选中状态下ctrl+c复制
vmap <C-c> "*y

" 依次遍历子窗口
nnoremap pwd :pwd<CR>
nnoremap ls  :ls<CR>

" 映射切换buffer的键位
nmap <C-Tab> :bp<CR>
nmap <C-s-Tab> :bn<CR>

" 生成文件名和当前时间
map <F2> a<C-R>=strftime("%c")<CR><Esc>

" " tab or buf 1
" nnoremap <leader>1 :call Tab_buf_switch(1)<cr>
" " Tab or buf 2
" nnoremap <leader>2 :call Tab_buf_switch(2)<cr>
" " Tab or buf 3
" nnoremap  <leader>3 :call Tab_buf_switch(3)<cr>
" " Tab or buf 4
" nnoremap  <leader>4 :call Tab_buf_switch(4)<cr>
" " Tab or buf 5
" nnoremap  <leader>5 :call Tab_buf_switch(5)<cr>
" " Tab or buf 6
" nnoremap  <leader>6 :call Tab_buf_switch(6)<cr>
" " Tab or buf 7
" nnoremap  <leader>7 :call Tab_buf_switch(7)<cr>
" " Tab or buf 8
" nnoremap  <leader>8 :call Tab_buf_switch(8)<cr>
" " Tab or buf 9
" nnoremap  <leader>9 :call Tab_buf_switch(9)<cr>
