NB. Solution based on the one available at https://rosettacode.org/wiki/Knapsack_problem/0-1#J
maximumValue=: {{
  plausible =: {{ ( ((x >: (+/ . *"1)) # ]) (#:@i.@(2&^)@#) )@:({."1) y }}
  best      =: plausible ([ {~ ([ ((i. >./)@:(+/ . *"1)) ({:"1@]))) ]

  x (_1 { [: +/ ((best # ]) :: 0)) y
}}
