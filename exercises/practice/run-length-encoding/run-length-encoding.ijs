require 'general/unittest'

NB. encode =: 'You need to implement this verb.'13!:8 (55)
NB. decode =: 'You need to implement this verb.'13!:8 (55)



rem=: ":@(''"_^:(1&=))                                NB. if the count is one remove it
frets=: (1 , 2&(~:/\))                                NB. get the frets by taking the nub sieve of the partitions and append 1
encode=: ; @: (frets ((rem@# ; {.));.1 ]) :: ''       NB. if y is empty returns empty
decode=: '\d+[a-zA-Z ]'&((1&".@}: # {:)rxapply)

