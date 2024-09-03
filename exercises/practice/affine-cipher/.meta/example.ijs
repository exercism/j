
encode=:{{)d
  m=. 26
  'a b'=. x
  if. 1 ~: a +. m do. 0$0 return. end.
  y=. (('[^a-z0-9]');'') rxrplc tolower y                   NB. remove spaces and punctuation
  i=. a. i. y                                               NB. get indexes
  r=. (m | b + a * ])&.(-&97)^:(>:&97 *. <:&122)"0 i
  r=. r { a.
  ' ' joinstring _5 <\ r
}}


decode=:{{)d
  m=. 26
  'a b'=. x
  a=. % m. 26 a
  y=. a. i. y -. ' '
  r=. (m | a * b -~ ])&.(-&97)^:(>:&97 *. <:&122)"0 y
  r { a.
}}

