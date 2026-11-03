load 'run-length-encoding.ijs'


run_length_encoding_test_01_ignore=: 0
test_run_length_encoding_test_01  =: monad define
  Description=: 'empty string'


  NB. string=. ''
  NB. expected=. ''
  assert '' -: encode ''
)

run_length_encoding_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_02  =: monad define
  Description=: 'single characters only are encoded without count'


  NB. string=. 'XYZ'
  NB. expected=. 'XYZ'
  assert 'XYZ' -: encode 'XYZ'
)

run_length_encoding_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_03  =: monad define
  Description=: 'string with no single characters'


  NB. string=. 'AABBBCCCC'
  NB. expected=. '2A3B4C'
  assert '2A3B4C' -: encode 'AABBBCCCC'
)

run_length_encoding_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_04  =: monad define
  Description=: 'single characters mixed with repeated characters'


  NB. string=. 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
  NB. expected=. '12WB12W3B24WB'
  assert '12WB12W3B24WB' -: encode 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
)

run_length_encoding_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_05  =: monad define
  Description=: 'multiple whitespace mixed in string'


  NB. string=. '  hsqq qww  '
  NB. expected=. '2 hs2q q2w2 '
  assert '2 hs2q q2w2 ' -: encode '  hsqq qww  '
)

run_length_encoding_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_06  =: monad define
  Description=: 'lowercase characters'


  NB. string=. 'aabbbcccc'
  NB. expected=. '2a3b4c'
  assert '2a3b4c' -: encode 'aabbbcccc'
)

run_length_encoding_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_07  =: monad define
  Description=: 'empty string'


  NB. string=. ''
  NB. expected=. ''
  assert '' -: decode ''
)

run_length_encoding_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_08  =: monad define
  Description=: 'single characters only'


  NB. string=. 'XYZ'
  NB. expected=. 'XYZ'
  assert 'XYZ' -: decode 'XYZ'
)

run_length_encoding_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_09  =: monad define
  Description=: 'string with no single characters'


  NB. string=. '2A3B4C'
  NB. expected=. 'AABBBCCCC'
  assert 'AABBBCCCC' -: decode '2A3B4C'
)

run_length_encoding_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_10  =: monad define
  Description=: 'single characters with repeated characters'


  NB. string=. '12WB12W3B24WB'
  NB. expected=. 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
  assert 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB' -: decode '12WB12W3B24WB'
)

run_length_encoding_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_11  =: monad define
  Description=: 'multiple whitespace mixed in string'


  NB. string=. '2 hs2q q2w2 '
  NB. expected=. '  hsqq qww  '
  assert '  hsqq qww  ' -: decode '2 hs2q q2w2 '
)

run_length_encoding_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_12  =: monad define
  Description=: 'lowercase string'


  NB. string=. '2a3b4c'
  NB. expected=. 'aabbbcccc'
  assert 'aabbbcccc' -: decode '2a3b4c'
)

run_length_encoding_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_run_length_encoding_test_13  =: monad define
  Description=: 'encode followed by decode gives original string'


  NB. string=. 'zzz ZZ  zZ'
  NB. expected=. 'zzz ZZ  zZ'
  assert 'zzz ZZ  zZ' -: decode@encode 'zzz ZZ  zZ'
)

