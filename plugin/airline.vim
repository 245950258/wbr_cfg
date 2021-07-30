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
