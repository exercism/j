#!/Applications/j901/bin/jconsole

test=: monad define
try.
  echo 'loading ',]sol=. 2{::ARGV,<'example.ijs'
  load sol
  assert. hello_world -: 'Hello, World!'
  echo 'OK'
  exit 0
catch.
  echo 'Tests Failed'
  exit 1
end.
)

test''