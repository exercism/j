load 'hello-world.ijs'
hello_world_test_ignore=: 0
test_hello_world_test  =: monad define
  Description=: 'Say Hi!'

  
  assert 'Hello, World!' -: hello_world 
)
