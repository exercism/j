load'hello-world.ijs'

test_hello=: monad define
assert 'Hello, World!' -: hello_world
)

REP=: hello_world