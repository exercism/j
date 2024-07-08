normalize=: ('[^0-9a-zA-Z]';'')&rxrplc@tolower
size=:{{ 
  if. 0 = y do. 0 0 return. end.
  /:~ (, (([: <./ ] #~ y <: *) _1 0 1&+)) >.@%: y 
}}
ciphertext=: ' ' joinstring (<"1)@:|:@:($!.' '~ size@#)@normalize
