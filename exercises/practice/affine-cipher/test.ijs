load 'affine-cipher.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


affine_cipher_test_01_ignore=: 0
test_affine_cipher_test_01  =: monad define
  Description@.1 ('encode yes')
  Order@.1 (1)

  NB. phrase=. 'yes'
  NB. 'a b'=. key=. 5 7
  NB. expected=. 'xbt'
  assert 'xbt' -: 5 7 encode 'yes'
)

affine_cipher_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_02  =: monad define
  Description@.1 ('encode no')
  Order@.1 (2)

  NB. phrase=. 'no'
  NB. 'a b'=. key=. 15 18
  NB. expected=. 'fu'
  assert 'fu' -: 15 18 encode 'no'
)

affine_cipher_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_03  =: monad define
  Description@.1 ('encode OMG')
  Order@.1 (3)

  NB. phrase=. 'OMG'
  NB. 'a b'=. key=. 21 3
  NB. expected=. 'lvz'
  assert 'lvz' -: 21 3 encode 'OMG'
)

affine_cipher_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_04  =: monad define
  Description@.1 ('encode O M G')
  Order@.1 (4)

  NB. phrase=. 'O M G'
  NB. 'a b'=. key=. 25 47
  NB. expected=. 'hjp'
  assert 'hjp' -: 25 47 encode 'O M G'
)

affine_cipher_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_05  =: monad define
  Description@.1 ('encode mindblowingly')
  Order@.1 (5)

  NB. phrase=. 'mindblowingly'
  NB. 'a b'=. key=. 11 15
  NB. expected=. 'rzcwa gnxzc dgt'
  assert 'rzcwa gnxzc dgt' -: 11 15 encode 'mindblowingly'
)

affine_cipher_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_06  =: monad define
  Description@.1 ('encode numbers')
  Order@.1 (6)

  NB. phrase=. 'Testing,1 2 3, testing.'
  NB. 'a b'=. key=. 3 4
  NB. expected=. 'jqgjc rw123 jqgjc rw'
  assert 'jqgjc rw123 jqgjc rw' -: 3 4 encode 'Testing,1 2 3, testing.'
)

affine_cipher_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_07  =: monad define
  Description@.1 ('encode deep thought')
  Order@.1 (7)

  NB. phrase=. 'Truth is fiction.'
  NB. 'a b'=. key=. 5 17
  NB. expected=. 'iynia fdqfb ifje'
  assert 'iynia fdqfb ifje' -: 5 17 encode 'Truth is fiction.'
)

affine_cipher_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_08  =: monad define
  Description@.1 ('encode all the letters')
  Order@.1 (8)

  NB. phrase=. 'The quick brown fox jumps over the lazy dog.'
  NB. 'a b'=. key=. 17 33
  NB. expected=. 'swxtj npvyk lruol iejdc blaxk swxmh qzglf'
  assert 'swxtj npvyk lruol iejdc blaxk swxmh qzglf' -: 17 33 encode 'The quick brown fox jumps over the lazy dog.'
)

affine_cipher_test_09_ignore=: 1 NB. Change this value to 0 to run this test
affine_cipher_test_09_expect=: 'domain error'
test_affine_cipher_test_09  =: monad define
  Description@.1 ('encode with a not coprime to m')
  Order@.1 (9)

  NB. phrase=. 'This is a test.'
  NB. 'a b'=. key=. 6 17
  NB. expected=. ,.<;._1 '|error|a and m must be coprime.'
  assert 0 = $ 6 17 encode 'This is a test.'
)

affine_cipher_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_10  =: monad define
  Description@.1 ('decode exercism')
  Order@.1 (10)

  NB. phrase=. 'tytgn fjr'
  NB. 'a b'=. key=. 3 7
  NB. expected=. 'exercism'
  assert 'exercism' -: 3 7 decode 'tytgn fjr'
)

affine_cipher_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_11  =: monad define
  Description@.1 ('decode a sentence')
  Order@.1 (11)

  NB. phrase=. 'qdwju nqcro muwhn odqun oppmd aunwd o'
  NB. 'a b'=. key=. 19 16
  NB. expected=. 'anobstacleisoftenasteppingstone'
  assert 'anobstacleisoftenasteppingstone' -: 19 16 decode 'qdwju nqcro muwhn odqun oppmd aunwd o'
)

affine_cipher_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_12  =: monad define
  Description@.1 ('decode numbers')
  Order@.1 (12)

  NB. phrase=. 'odpoz ub123 odpoz ub'
  NB. 'a b'=. key=. 25 7
  NB. expected=. 'testing123testing'
  assert 'testing123testing' -: 25 7 decode 'odpoz ub123 odpoz ub'
)

affine_cipher_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_13  =: monad define
  Description@.1 ('decode all the letters')
  Order@.1 (13)

  NB. phrase=. 'swxtj npvyk lruol iejdc blaxk swxmh qzglf'
  NB. 'a b'=. key=. 17 33
  NB. expected=. 'thequickbrownfoxjumpsoverthelazydog'
  assert 'thequickbrownfoxjumpsoverthelazydog' -: 17 33 decode 'swxtj npvyk lruol iejdc blaxk swxmh qzglf'
)

affine_cipher_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_14  =: monad define
  Description@.1 ('decode with no spaces in input')
  Order@.1 (14)

  NB. phrase=. 'swxtjnpvyklruoliejdcblaxkswxmhqzglf'
  NB. 'a b'=. key=. 17 33
  NB. expected=. 'thequickbrownfoxjumpsoverthelazydog'
  assert 'thequickbrownfoxjumpsoverthelazydog' -: 17 33 decode 'swxtjnpvyklruoliejdcblaxkswxmhqzglf'
)

affine_cipher_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_affine_cipher_test_15  =: monad define
  Description@.1 ('decode with too many spaces')
  Order@.1 (15)

  NB. phrase=. 'vszzm    cly   yd cg    qdp'
  NB. 'a b'=. key=. 15 16
  NB. expected=. 'jollygreengiant'
  assert 'jollygreengiant' -: 15 16 decode 'vszzm    cly   yd cg    qdp'
)

affine_cipher_test_16_ignore=: 1 NB. Change this value to 0 to run this test
affine_cipher_test_16_expect=: 'domain error'
test_affine_cipher_test_16  =: monad define
  Description@.1 ('decode with a not coprime to m')
  Order@.1 (16)

  NB. phrase=. 'Test'
  NB. 'a b'=. key=. 13 5
  NB. expected=. ,.<;._1 '|error|a and m must be coprime.'
  assert 0 = $ 13 5 decode 'Test'
)
