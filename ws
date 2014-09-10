" ws -- word search 
"
" $Id: ws,v 1.1 1997/05/29 20:53:29 cdua Exp cdua $
" Carlos Duarte, 970220/970221
" 
" 	zb	search current word (under cursor) backwards
" 	zf	search current word (under cursor) forwards
" 
map zb a_mdbi?\<`d3lxF?"xy2e3x@x\>
map zf a_mdbi/\<`d3lxF/"xy2e3x@x\>
"
" old macro to search back
"map g a_mdbi?\<ea\>`d3lxF?"xyf>f>XxF?3x@x
