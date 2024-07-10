load 'crypto-square.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


crypto_square_test_01_ignore=: 0
test_crypto_square_test_01  =: monad define
  Description@.1 ('empty plaintext results in an empty ciphertext')
  Order@.1 (1)

  NB. plaintext=. 0$0
  NB. expected=. 0$0
  assert (0$0) -: ciphertext 0$0
)

crypto_square_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_crypto_square_test_02  =: monad define
  Description@.1 ('normalization results in empty plaintext')
  Order@.1 (2)

  NB. plaintext=. '... --- ...'
  NB. expected=. 0$0
  assert (0$0) -: ciphertext '... --- ...'
)

crypto_square_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_crypto_square_test_03  =: monad define
  Description@.1 ('Lowercase')
  Order@.1 (3)

  NB. plaintext=. 'A'
  NB. expected=. 'a'
  assert (,'a') -: ciphertext 'A'
)

crypto_square_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_crypto_square_test_04  =: monad define
  Description@.1 ('Remove spaces')
  Order@.1 (4)

  NB. plaintext=. '  b '
  NB. expected=. 'b'
  assert (,'b') -: ciphertext '  b '
)

crypto_square_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_crypto_square_test_05  =: monad define
  Description@.1 ('Remove punctuation')
  Order@.1 (5)

  NB. plaintext=. '@1,%!'
  NB. expected=. '1'
  assert (,'1') -: ciphertext '@1,%!'
)

crypto_square_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_crypto_square_test_06  =: monad define
  Description@.1 ('9 character plaintext results in 3 chunks of 3 characters')
  Order@.1 (6)

  NB. plaintext=. 'This is fun!'
  NB. expected=. 'tsf hiu isn'
  assert 'tsf hiu isn' -: ciphertext 'This is fun!'
)

crypto_square_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_crypto_square_test_07  =: monad define
  Description@.1 ('8 character plaintext results in 3 chunks, the last one with a trailing space')
  Order@.1 (7)

  NB. plaintext=. 'Chill out.'
  NB. expected=. 'clu hlt io '
  assert 'clu hlt io ' -: ciphertext 'Chill out.'
)

crypto_square_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_crypto_square_test_08  =: monad define
  Description@.1 ('54 character plaintext results in 7 chunks, the last two with trailing spaces')
  Order@.1 (8)

  NB. plaintext=. 'If man was meant to stay on the ground, god would have given us roots.'
  NB. expected=. 'imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau '
  assert 'imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau ' -: ciphertext 'If man was meant to stay on the ground, god would have given us roots.'
)
