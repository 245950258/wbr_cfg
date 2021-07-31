""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AirLine 设置开始
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=DroidSansMono\ Nerd\ Font\ Mono\ Italic\ 12

let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
" let g:airline#extensions#tabline#tab_nr_type = 1 " tab number

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
" let g:airline#extensions#tabline#show_tab_nr = 1
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#buffer_nr_show = 0
" let g:airline#extensions#tabline#fnametruncate = 16
" let g:airline#extensions#tabline#fnamecollapse = 2
" let g:airline#extensions#tabline#buffer_idx_mode = 1

" func! Tab_buf_switch(num) abort
"   if exists('g:feat_enable_airline') && g:feat_enable_airline == 1
"   	execute 'normal '."\<Plug>AirlineSelectTab".a:num
"   else
"   	if exists( '*tabpagenr' ) && tabpagenr('$') != 1
" 		" Tab support && tabs open
"     	execute 'normal '.a:num.'gt'
"     else
"       let l:temp=a:num
"       let l:buf_index=a:num
"       let l:buf_count=len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
"       if l:temp > l:buf_count
"       	return
"       endif
"       while l:buf_index != 0
"       	while !buflisted(l:temp)
"         	let l:temp += 1
"         endw
"         let l:buf_index -= 1
"         if l:buf_index != 0
"         let l:temp += 1
"         endif
"       endw
"       execute ':'.l:temp.'b'
"     endif
"   endif
" endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AirLine 设置结束
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
