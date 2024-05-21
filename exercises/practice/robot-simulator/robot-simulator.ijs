require 'general/unittest'

cocurrent 'robot'

directions=: ;:'north east south west'

create=: monad define
  position =: 'You need to assign the value of this noun.'13!:8 (55)
  direction=: 'You need to assign the value of this noun.'13!:8 (55)
  
  move=: 'You need to implement this verb.'13!:8 (55)
)

destroy=: monad define
  'You need to implement this verb.'13!:8 (55)
)
