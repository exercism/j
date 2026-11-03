load 'scrabble-score.ijs'


scrabble_score_test_01_ignore=: 0
test_scrabble_score_test_01  =: monad define
  Description=: 'lowercase letter'


  NB. word     =. 'a'
  NB. expected =. 1
  assert 1 -: score 'a'
)

scrabble_score_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_02  =: monad define
  Description=: 'uppercase letter'


  NB. word     =. 'A'
  NB. expected =. 1
  assert 1 -: score 'A'
)

scrabble_score_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_03  =: monad define
  Description=: 'valuable letter'


  NB. word     =. 'f'
  NB. expected =. 4
  assert 4 -: score 'f'
)

scrabble_score_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_04  =: monad define
  Description=: 'short word'


  NB. word     =. 'at'
  NB. expected =. 2
  assert 2 -: score 'at'
)

scrabble_score_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_05  =: monad define
  Description=: 'short, valuable word'


  NB. word     =. 'zoo'
  NB. expected =. 12
  assert 12 -: score 'zoo'
)

scrabble_score_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_06  =: monad define
  Description=: 'medium word'


  NB. word     =. 'street'
  NB. expected =. 6
  assert 6 -: score 'street'
)

scrabble_score_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_07  =: monad define
  Description=: 'medium, valuable word'


  NB. word     =. 'quirky'
  NB. expected =. 22
  assert 22 -: score 'quirky'
)

scrabble_score_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_08  =: monad define
  Description=: 'long, mixed-case word'


  NB. word     =. 'OxyphenButazone'
  NB. expected =. 41
  assert 41 -: score 'OxyphenButazone'
)

scrabble_score_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_09  =: monad define
  Description=: 'english-like word'


  NB. word     =. 'pinata'
  NB. expected =. 8
  assert 8 -: score 'pinata'
)

scrabble_score_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_10  =: monad define
  Description=: 'empty input'


  NB. word     =. ''
  NB. expected =. 0
  assert 0 -: score ''
)

scrabble_score_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_scrabble_score_test_11  =: monad define
  Description=: 'entire alphabet available'


  NB. word     =. 'abcdefghijklmnopqrstuvwxyz'
  NB. expected =. 87
  assert 87 -: score 'abcdefghijklmnopqrstuvwxyz'
)

