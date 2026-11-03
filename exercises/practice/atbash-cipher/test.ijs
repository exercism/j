load 'atbash-cipher.ijs'


atbash_cipher_test_01_ignore=: 0
test_atbash_cipher_test_01  =: monad define
  Description=: 'encode yes'


  NB. phrase=. 'yes'
  NB. expected=. 'bvh'
  assert 'bvh' -: encode 'yes'
)

atbash_cipher_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_02  =: monad define
  Description=: 'encode no'


  NB. phrase=. 'no'
  NB. expected=. 'ml'
  assert 'ml' -: encode 'no'
)

atbash_cipher_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_03  =: monad define
  Description=: 'encode OMG'


  NB. phrase=. 'OMG'
  NB. expected=. 'lnt'
  assert 'lnt' -: encode 'OMG'
)

atbash_cipher_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_04  =: monad define
  Description=: 'encode spaces'


  NB. phrase=. 'O M G'
  NB. expected=. 'lnt'
  assert 'lnt' -: encode 'O M G'
)

atbash_cipher_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_05  =: monad define
  Description=: 'encode mindblowingly'


  NB. phrase=. 'mindblowingly'
  NB. expected=. 'nrmwy oldrm tob'
  assert 'nrmwy oldrm tob' -: encode 'mindblowingly'
)

atbash_cipher_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_06  =: monad define
  Description=: 'encode numbers'


  NB. phrase=. 'Testing,1 2 3, testing.'
  NB. expected=. 'gvhgr mt123 gvhgr mt'
  assert 'gvhgr mt123 gvhgr mt' -: encode 'Testing,1 2 3, testing.'
)

atbash_cipher_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_07  =: monad define
  Description=: 'encode deep thought'


  NB. phrase=. 'Truth is fiction.'
  NB. expected=. 'gifgs rhurx grlm'
  assert 'gifgs rhurx grlm' -: encode 'Truth is fiction.'
)

atbash_cipher_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_08  =: monad define
  Description=: 'encode all the letters'


  NB. phrase=. 'The quick brown fox jumps over the lazy dog.'
  NB. expected=. 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
  assert 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt' -: encode 'The quick brown fox jumps over the lazy dog.'
)

atbash_cipher_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_09  =: monad define
  Description=: 'decode exercism'


  NB. phrase=. 'vcvix rhn'
  NB. expected=. 'exercism'
  assert 'exercism' -: decode 'vcvix rhn'
)

atbash_cipher_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_10  =: monad define
  Description=: 'decode a sentence'


  NB. phrase=. 'zmlyh gzxov rhlug vmzhg vkkrm thglm v'
  NB. expected=. 'anobstacleisoftenasteppingstone'
  assert 'anobstacleisoftenasteppingstone' -: decode 'zmlyh gzxov rhlug vmzhg vkkrm thglm v'
)

atbash_cipher_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_11  =: monad define
  Description=: 'decode numbers'


  NB. phrase=. 'gvhgr mt123 gvhgr mt'
  NB. expected=. 'testing123testing'
  assert 'testing123testing' -: decode 'gvhgr mt123 gvhgr mt'
)

atbash_cipher_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_12  =: monad define
  Description=: 'decode all the letters'


  NB. phrase=. 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
  NB. expected=. 'thequickbrownfoxjumpsoverthelazydog'
  assert 'thequickbrownfoxjumpsoverthelazydog' -: decode 'gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt'
)

atbash_cipher_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_13  =: monad define
  Description=: 'decode with too many spaces'


  NB. phrase=. 'vc vix    r hn'
  NB. expected=. 'exercism'
  assert 'exercism' -: decode 'vc vix    r hn'
)

atbash_cipher_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_atbash_cipher_test_14  =: monad define
  Description=: 'decode with no spaces'


  NB. phrase=. 'zmlyhgzxovrhlugvmzhgvkkrmthglmv'
  NB. expected=. 'anobstacleisoftenasteppingstone'
  assert 'anobstacleisoftenasteppingstone' -: decode 'zmlyhgzxovrhlugvmzhgvkkrmthglmv'
)
