load 'hello-world.ijs'

before_all=: monad define  
  order=: 1
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ":order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


say_hi_ignore=: 0
test_say_hi  =: monad define
  'Hello, World!' -: hello_world 
)