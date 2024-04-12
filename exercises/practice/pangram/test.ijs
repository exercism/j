load 'pangram.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


pangram_test_01_ignore=: 0
test_pangram_test_01  =: monad define
  Description@.1 ('empty sentence')
  Order@.1 (1)

  NB. sentence=. ''
  NB. expected=. 0
  assert 0 -: isPangram ''
)

pangram_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_02  =: monad define
  Description@.1 ('perfect lower case')
  Order@.1 (2)

  NB. sentence=. 'abcdefghijklmnopqrstuvwxyz'
  NB. expected=. 1
  assert 1 -: isPangram 'abcdefghijklmnopqrstuvwxyz'
)

pangram_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_03  =: monad define
  Description@.1 ('only lower case')
  Order@.1 (3)

  NB. sentence=. 'the quick brown fox jumps over the lazy dog'
  NB. expected=. 1
  assert 1 -: isPangram 'the quick brown fox jumps over the lazy dog'
)

pangram_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_04  =: monad define
  Description@.1 ('missing the letter ''x''')
  Order@.1 (4)

  NB. sentence=. 'a quick movement of the enemy will jeopardize five gunboats'
  NB. expected=. 0
  assert 0 -: isPangram 'a quick movement of the enemy will jeopardize five gunboats'
)

pangram_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_05  =: monad define
  Description@.1 ('missing the letter ''h''')
  Order@.1 (5)

  NB. sentence=. 'five boxing wizards jump quickly at it'
  NB. expected=. 0
  assert 0 -: isPangram 'five boxing wizards jump quickly at it'
)

pangram_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_06  =: monad define
  Description@.1 ('with underscores')
  Order@.1 (6)

  NB. sentence=. 'the_quick_brown_fox_jumps_over_the_lazy_dog'
  NB. expected=. 1
  assert 1 -: isPangram 'the_quick_brown_fox_jumps_over_the_lazy_dog'
)

pangram_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_07  =: monad define
  Description@.1 ('with numbers')
  Order@.1 (7)

  NB. sentence=. 'the 1 quick brown fox jumps over the 2 lazy dogs'
  NB. expected=. 1
  assert 1 -: isPangram 'the 1 quick brown fox jumps over the 2 lazy dogs'
)

pangram_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_08  =: monad define
  Description@.1 ('missing letters replaced by numbers')
  Order@.1 (8)

  NB. sentence=. '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
  NB. expected=. 0
  assert 0 -: isPangram '7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'
)

pangram_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_09  =: monad define
  Description@.1 ('mixed case and punctuation')
  Order@.1 (9)

  NB. sentence=. '"Five quacking Zephyrs jolt my wax bed."'
  NB. expected=. 1
  assert 1 -:isPangram '"Five quacking Zephyrs jolt my wax bed."'
)

pangram_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_pangram_test_10  =: monad define
  Description@.1 ('a-m and A-M are 26 different characters but not a pangram')
  Order@.1 (10)

  NB. sentence=. 'abcdefghijklm ABCDEFGHIJKLM'
  NB. expected=. 0
  assert 0 -: isPangram 'abcdefghijklm ABCDEFGHIJKLM'
)

