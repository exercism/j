load 'atbash-cipher.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


atbash_cipher_test_01_ignore=: 0
test_atbash_cipher_test_01  =: monad define
  Description@.1 ('encode yes')
  Order@.1 (1)

  NB. phrase=. 'yes'
  NB. expected=. 'bvh'
  assert 'bvh' -: encode 'yes'
)

atbash_cipher_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_02  =: monad define
  Description@.1 ('encode no')
  Order@.1 (2)

  NB. phrase=. 'no'
  NB. expected=. 'ml'
  assert 'ml' -: encode 'no'
)

atbash_cipher_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_03  =: monad define
  Description@.1 ('encode OMG')
  Order@.1 (3)

  NB. phrase=. 'OMG'
  NB. expected=. 'lnt'
  assert 'lnt' -: encode 'OMG'
)

atbash_cipher_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_04  =: monad define
  Description@.1 ('encode spaces')
  Order@.1 (4)

  NB. phrase=. 'O M G'
  NB. expected=. 'lnt'
  assert 'lnt' -: encode 'O M G'
)

atbash_cipher_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_05  =: monad define
  Description@.1 ('encode mindblowingly')
  Order@.1 (5)

  NB. phrase=. 'mindblowingly'
  NB. expected=. 'nrmwy oldrm tob'
  assert 'nrmwy oldrm tob' -: encode 'mindblowingly'
)

atbash_cipher_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_06  =: monad define
  Description@.1 ('encode numbers')
  Order@.1 (6)

  NB. phrase=. 'Testing,1 2 3, testing.'
  NB. expected=. 'gvhgr mt123 gvhgr mt'
  assert 'gvhgr mt123 gvhgr mt' -: encode 'Testing,1 2 3, testing.'
)

atbash_cipher_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_07  =: monad define
  Description@.1 ('encode deep thought')
  Order@.1 (7)

  NB. phrase=. 'Truth is fiction.'
  NB. expected=. 'gifgs rhurx grlm'
  assert 'gifgs rhurx grlm' -: encode 'Truth is fiction.'
)

atbash_cipher_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_08  =: monad define
  Description@.1 ('encode all the letters')
  Order@.1 (8)

  NB. phrase=. 'The quick brown fox jumps over the lazy dog.'
  NB. expected=. 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
  assert 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt' -: encode 'The quick brown fox jumps over the lazy dog.'
)

atbash_cipher_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_09  =: monad define
  Description@.1 ('decode exercism')
  Order@.1 (9)

  NB. phrase=. 'vcvix rhn'
  NB. expected=. 'exercism'
  assert 'exercism' -: decode 'vcvix rhn'
)

atbash_cipher_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_10  =: monad define
  Description@.1 ('decode a sentence')
  Order@.1 (10)

  NB. phrase=. 'zmlyh gzxov rhlug vmzhg vkkrm thglm v'
  NB. expected=. 'anobstacleisoftenasteppingstone'
  assert 'anobstacleisoftenasteppingstone' -: decode 'zmlyh gzxov rhlug vmzhg vkkrm thglm v'
)

atbash_cipher_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_11  =: monad define
  Description@.1 ('decode numbers')
  Order@.1 (11)

  NB. phrase=. 'gvhgr mt123 gvhgr mt'
  NB. expected=. 'testing123testing'
  assert 'testing123testing' -: decode 'gvhgr mt123 gvhgr mt'
)

atbash_cipher_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_12  =: monad define
  Description@.1 ('decode all the letters')
  Order@.1 (12)

  NB. phrase=. 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
  NB. expected=. 'thequickbrownfoxjumpsoverthelazydog'
  assert 'thequickbrownfoxjumpsoverthelazydog' -: decode 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
)

atbash_cipher_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_13  =: monad define
  Description@.1 ('decode with too many spaces')
  Order@.1 (13)

  NB. phrase=. 'vc vix    r hn'
  NB. expected=. 'exercism'
  assert 'exercism' -: decode 'vc vix    r hn'
)

atbash_cipher_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_14  =: monad define
  Description@.1 ('decode with no spaces')
  Order@.1 (14)

  NB. phrase=. 'zmlyhgzxovrhlugvmzhgvkkrmthglmv'
  NB. expected=. 'anobstacleisoftenasteppingstone'
  assert 'anobstacleisoftenasteppingstone' -: decode 'zmlyhgzxovrhlugvmzhgvkkrmthglmv'
)
