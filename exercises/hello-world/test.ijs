load'hello_world.ijs'

test_hello=: monad define
  assert 'Hello, World!' -: hello_world
)
