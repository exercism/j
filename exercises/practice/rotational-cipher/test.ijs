load 'rotational-cipher.ijs'


rotational_cipher_test_01_ignore=: 0
test_rotational_cipher_test_01  =: monad define
  Description=: 'rotate a by 0, same output as input'


  NB. NB. text=. 'a'
  NB. shiftKey=. 0
  NB. expected=. 'a'
  assert 'a' -: 0 rotate 'a'
)

rotational_cipher_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_02  =: monad define
  Description=: 'rotate a by 1'


  NB. NB. text=. 'a'
  NB. shiftKey=. 1
  NB. expected=. 'b'
  assert 'b' -: 1 rotate 'a'
)

rotational_cipher_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_03  =: monad define
  Description=: 'rotate a by 26, same output as input'


  NB. NB. text=. 'a'
  NB. shiftKey=. 26
  NB. expected=. 'a'
  assert 'a' -: 26 rotate 'a'
)

rotational_cipher_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_04  =: monad define
  Description=: 'rotate m by 13'


  NB. NB. text=. 'm'
  NB. shiftKey=. 13
  NB. expected=. 'z'
  assert 'z' -: 13 rotate 'm'
)

rotational_cipher_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_05  =: monad define
  Description=: 'rotate n by 13 with wrap around alphabet'


  NB. NB. text=. 'n'
  NB. shiftKey=. 13
  NB. expected=. 'a'
  assert 'a' -: 13 rotate 'n'
)

rotational_cipher_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_06  =: monad define
  Description=: 'rotate capital letters'


  NB. NB. text=. 'OMG'
  NB. shiftKey=. 5
  NB. expected=. 'TRL'
  assert 'TRL' -: 5 rotate 'OMG'
)

rotational_cipher_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_07  =: monad define
  Description=: 'rotate spaces'


  NB. NB. text=. 'O M G'
  NB. shiftKey=. 5
  NB. expected=. 'T R L'
  assert 'T R L' -: 5 rotate 'O M G'
)

rotational_cipher_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_08  =: monad define
  Description=: 'rotate numbers'


  NB. NB. text=. 'Testing 1 2 3 testing'
  NB. shiftKey=. 4
  NB. expected=. 'Xiwxmrk 1 2 3 xiwxmrk'
  assert 'Xiwxmrk 1 2 3 xiwxmrk' -: 4 rotate 'Testing 1 2 3 testing'
)

rotational_cipher_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_09  =: monad define
  Description=: 'rotate punctuation'


  NB. NB. text=. 'Let's eat, Grandma!'
  NB. shiftKey=. 21
  NB. expected=. 'Gzo'n zvo, Bmviyhv!'
  assert 'Gzo''n zvo, Bmviyhv!' -: 21 rotate 'Let''s eat, Grandma!'
)

rotational_cipher_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_rotational_cipher_test_10  =: monad define
  Description=: 'rotate all letters'


  NB. NB. text=. 'The quick brown fox jumps over the lazy dog.'
  NB. shiftKey=. 13
  NB. expected=. 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
  assert 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.' -: 13 rotate 'The quick brown fox jumps over the lazy dog.'
)

