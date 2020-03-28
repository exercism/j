test=: monad define
try.
  load 1{::ARGV,<'hello_world.ijs'
  echo '1 checking hello_world matches ''Hello, World!'''
  assert. hello_world -: 'Hello, World!'
  echo 'Good'
catch.
  echo 'Tests Failed'
end.
)

test''