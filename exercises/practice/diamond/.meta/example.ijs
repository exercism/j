rows=:{{
  alphabet =. (>: _65 + a. i. y){.65}.a.
  matrix   =. $~ 2 # #
  identity =. =/~ @: i. @: # 
  
  right  =. (identity (' '"_^:(0=[)"0 0) matrix) alphabet
  left   =. }:@|."1 right
  top    =. left,.right
  bottom =. }.@|. top
  top,bottom
}}
