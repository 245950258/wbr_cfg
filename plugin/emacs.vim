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
