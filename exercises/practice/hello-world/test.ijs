load 'hello-world.ijs'

temppath=: < jpath '~temp/helper.txt'


before_all=: monad define  
  order=: i.0
  tasks=: i.0
)

after_all=: monad define
  (, LF ,~"1 ":order ,. tasks) 1!:2 temppath
)

say_hi_ignore=: 0
test_say_hi=: monad define
  order=:order , 1
  tasks=: tasks, 1
  'Hello, World!' -: hello_world 
)