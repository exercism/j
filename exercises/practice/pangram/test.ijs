load 'pangram.ijs'


pangram_test_01_ignore=: 0
test_pangram_test_01  =: monad define
  Description=: 'empty sentence'


  NB. sentence=. ''
  NB. expected=. 0
  assert 0 -: isPangram ''
)

pangram_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_02  =: monad define
  Description=: 'perfect lower case'


  NB. sentence=. 'abcdefghijklmnopqrstuvwxyz'
  NB. expected=. 1
  assert 1 -: isPangram 'abcdefghijklmnopqrstuvwxyz'
)

pangram_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_03  =: monad define
  Description=: 'only lower case'


  NB. sentence=. 'the quick brown fox jumps over the lazy dog'
  NB. expected=. 1
  assert 1 -: isPangram 'the quick brown fox jumps over the lazy dog'
)

pangram_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_04  =: monad define
  Description=: 'missing the letter ''x'''


  NB. sentence=. 'a quick movement of the enemy will jeopardize five gunboats'
  NB. expected=. 0
  assert 0 -: isPangram 'a quick movement of the enemy will jeopardize five gunboats'
)

pangram_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_05  =: monad define
  Description=: 'missing the letter ''h'''


  NB. sentence=. 'five boxing wizards jump quickly at it'
  NB. expected=. 0
  assert 0 -: isPangram 'five boxing wizards jump quickly at it'
)

pangram_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_06  =: monad define
  Description=: 'with underscores'


  NB. sentence=. 'the_quick_brown_fox_jumps_over_the_lazy_dog'
  NB. expected=. 1
  assert 1 -: isPangram 'the_quick_brown_fox_jumps_over_the_lazy_dog'
)

pangram_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_07  =: monad define
  Description=: 'with numbers'


  NB. sentence=. 'the 1 quick brown fox jumps over the 2 lazy dogs'
  NB. expected=. 1
  assert 1 -: isPangram 'the 1 quick brown fox jumps over the 2 lazy dogs'
)

pangram_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_08  =: monad define
  Description=: 'missing letters replaced by numbers'


  NB. sentence=. '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
  NB. expected=. 0
  assert 0 -: isPangram '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
)

pangram_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_09  =: monad define
  Description=: 'mixed case and punctuation'


  NB. sentence=. '"Five quacking Zephyrs jolt my wax bed."'
  NB. expected=. 1
  assert 1 -:isPangram '"Five quacking Zephyrs jolt my wax bed."'
)

pangram_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_10  =: monad define
  Description=: 'a-m and A-M are 26 different characters but not a pangram'


  NB. sentence=. 'abcdefghijklm ABCDEFGHIJKLM'
  NB. expected=. 0
  assert 0 -: isPangram 'abcdefghijklm ABCDEFGHIJKLM'
)

