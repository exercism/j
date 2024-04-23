load 'secret-handshake.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


secret_handshake_test_01_ignore=: 0
test_secret_handshake_test_01  =: monad define
  Description@.1 ('wink for 1')
  Order@.1 (1)

  NB. number=. 1
  expected=. ,<'wink'
  assert expected -: ,commands 1
)

secret_handshake_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_02  =: monad define
  Description@.1 ('double blink for 10')
  Order@.1 (2)

  NB. number=. 2
  expected=. ,<'double blink'
  assert expected -: ,commands 2
)

secret_handshake_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_03  =: monad define
  Description@.1 ('close your eyes for 100')
  Order@.1 (3)

  NB. number=. 4
  expected=. ,<'close your eyes'
  assert expected -: ,commands 4
)

secret_handshake_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_04  =: monad define
  Description@.1 ('jump for 1000')
  Order@.1 (4)

  NB. number=. 8
  expected=. ,<'jump'
  assert expected -: ,commands 8
)

secret_handshake_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_05  =: monad define
  Description@.1 ('combine two actions')
  Order@.1 (5)

  NB. number=. 3
  expected=. 'wink' ; 'double blink'
  assert expected -: ,commands 3
)

secret_handshake_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_06  =: monad define
  Description@.1 ('reverse two actions')
  Order@.1 (6)

  NB. number=. 19
  expected=. 'double blink' ; 'wink'
  assert expected -: ,commands 19
)

secret_handshake_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_07  =: monad define
  Description@.1 ('reversing one action gives the same action')
  Order@.1 (7)

  NB. number=. 24
  expected=. ,<'jump'
  assert expected -: ,commands 24
)

secret_handshake_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_08  =: monad define
  Description@.1 ('reversing no actions still gives no actions')
  Order@.1 (8)

  NB. number=. 16
  expected=. ''
  assert expected -: ,commands 16
)

secret_handshake_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_09  =: monad define
  Description@.1 ('all possible actions')
  Order@.1 (9)

  NB. number=. 15
  expected=. 'wink' ; 'double blink' ; 'close your eyes' ; 'jump'
  assert expected -: ,commands 15
)

secret_handshake_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_10  =: monad define
  Description@.1 ('reverse all possible actions')
  Order@.1 (10)

  NB. number=. 31
  expected=. 'jump' ; 'close your eyes' ; 'double blink' ; 'wink'
  assert expected -: ,commands 31
)

secret_handshake_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_secret_handshake_test_11  =: monad define
  Description@.1 ('do nothing for zero')
  Order@.1 (11)

  NB. number=. 0
  expected=. ''
  assert expected -: ,commands 0
)

