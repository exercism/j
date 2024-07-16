isvalid=: {{)m
  'x X'=. 10
  valid=. '[0-9-]+[0-9xX]$' rxeq y
  isbn=. (0 = 11 | +/@:((|.@:>:@i.10) * ])) :: 0 *. 10 = #
  if. valid do. 
    isbn ; ("."0)each (-.&'-'@}: ; {:) y
  else.
    0
  end.
}}
