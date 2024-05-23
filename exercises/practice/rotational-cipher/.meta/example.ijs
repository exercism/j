rotate=:{{ 
  alphabet=. ,@:(#~ ((a.&i. y)&e."1))  65 97 + (,: ]) i. 26 
  idx=. alphabet i. a.&i.
  if. (0 = # alphabet) +. 26 = idx y do. 
    y
  else. 
    a.&i.^:_1 (alphabet {~ x (+ m. 26) idx) y
  end.
  NB. (a. {~ alphabet {~ x (+ m. 26) idx)^:((0 -.@-: # alphabet) *. 26 -.@-: idx) y
}}"0
