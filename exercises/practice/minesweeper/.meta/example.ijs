annotate=: {{
  if. *./ 1&>: $y do.
    ] y
  elseif. 1 = {.$y do.
    board_1_x_n y
  elseif. 1 ={:$y do.
    board_1_x_n&.|: y
  elseif. 2 2 -: $ y do.
    board_2_x_2 y
  elseif. 3 2 -: $ y do.
    board_ge_2_x_2&.|: y
  else.
    board_ge_2_x_2 y
  end.
}}

board_ge_2_x_2=: {{
  bomb      =. '*'"_
  bomb_next =. ":@{:
  clear     =. ' '"_
  shape  =. $ y
  matrix =. ' *'&i. y
  count  =. +/^:_ every
  is_bomb        =. '*'"_^:(1 -: {.) each
  are_bombs_next =. ":@{:^:(0 -: {.) each
  no_bombs       =. ' '"_^:(0 0&-:) each

  x_center           =. 1 1 ,: 3 3 
  x_corners          =. (shape - 2) ,: 2 2
  x_horiz_boundaries =. (1,~  ({. shape) - 2) ,: 2 3
  x_vert_boundaries  =. (1,  ({: shape) - 2) ,: 3 2 

  center           =. count x_center <;._3 matrix
  corners          =. count x_corners <;._3 matrix
  horiz_boundaries =. count x_horiz_boundaries <;._3 matrix
  vert_boundaries  =. count x_vert_boundaries <;._3 matrix
  
  fst_row              =. ({.{.corners), ({.horiz_boundaries), ({:{.corners)
  lst_row              =. ({.{:corners), ({:horiz_boundaries), ({:{:corners)
  'left_col right_col' =. ,. each <"1 |: vert_boundaries
  middle_rows          =. left_col ,. center ,. right_col
  
  sectors_count =. fst_row , middle_rows , lst_row

  board         =. matrix <@,"0 sectors_count


  ;"1 is_bomb are_bombs_next no_bombs board
}}

board_2_x_2=:{{
  bombs     =. +/^:_ ' *'&i. y

  ;"1 ":@bombs"_^:([: -. '*'&-: +. ' '&-: *. bombs = 0"_) each y
}}

board_1_x_n=: {{
  matrix =. ' *'&i. y
  count  =. +/^:_ every
  is_bomb        =. '*'"_^:(1 -: {.) each
  are_bombs_next =. ":@{:^:(0 -: {.) each
  no_bombs       =. ' '"_^:(0 0&-:) each
  center =. count (1 1,:1 3) <;._3 matrix
  corners=. count ((1, ({:$y) - 2 ) ,: 1 2) <;._3 matrix

  sectors_count=. ({.{.corners),. center,. ({:{.corners)
  board         =. matrix <@,"0 sectors_count

  ;"1 is_bomb are_bombs_next no_bombs board
}}
