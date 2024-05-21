cocurrent 'robot'

directions=: ;:'north east south west'
moves=: (]`>:"0)`(>:`]"0)`(]`<:"0)`(<:`]"0) 

create=:3 : 0
  'position direction'=: y

  L=: {{ direction=: (directions {~ 4 | [: <: directions&i.)&.< x }}

  R=: {{ direction=: (directions {~ 4 | [: >: directions&i.)&.< x }}

  A=: {{ position=: (moves @. (directions i. <x)) y }}

  move=: {{ for_i. y do. direction i~ position end. '' }}

  ''
)

destroy=:3 : 0
  codestroy''
)
