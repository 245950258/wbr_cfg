"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add Comments Begin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

func! AddCommentHeader(lnum) abort
  let comment_header =
                \[
                \'  // ------------------------------------------------------',
                \'  // **** Comment ****',
                \'  // ------------------------------------------------------'
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
