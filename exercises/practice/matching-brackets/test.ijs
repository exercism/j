load 'matching-brackets.ijs'


matching_brackets_test_01_ignore=: 0
test_matching_brackets_test_01  =: monad define
  Description=: 'paired square brackets'


  NB. value=. '[]'
  NB. expected=. 1
  assert 1 -: isPaired '[]'
)

matching_brackets_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_02  =: monad define
  Description=: 'empty string'


  NB. value=. ''
  NB. expected=. 1
  assert 1 -: isPaired ''
)

matching_brackets_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_03  =: monad define
  Description=: 'unpaired brackets'


  NB. value=. '[['
  NB. expected=. 0
  assert 0 -: isPaired '[['
)

matching_brackets_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_04  =: monad define
  Description=: 'wrong ordered brackets'


  NB. value=. '}{'
  NB. expected=. 0
  assert 0 -: isPaired '}{'
)

matching_brackets_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_05  =: monad define
  Description=: 'wrong closing bracket'


  NB. value=. '{]'
  NB. expected=. 0
  assert 0 -: isPaired '{]'
)

matching_brackets_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_06  =: monad define
  Description=: 'paired with whitespace'


  NB. value=. '{ }'
  NB. expected=. 1
  assert 1 -: isPaired '{ }'
)

matching_brackets_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_07  =: monad define
  Description=: 'partially paired brackets'


  NB. value=. '{[])'
  NB. expected=. 0
  assert 0 -: isPaired '{[])'
)

matching_brackets_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_08  =: monad define
  Description=: 'simple nested brackets'


  NB. value=. '{[]}'
  NB. expected=. 1
  assert 1 -: isPaired '{[]}'
)

matching_brackets_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_09  =: monad define
  Description=: 'several paired brackets'


  NB. value=. '{}[]'
  NB. expected=. 1
  assert 1 -: isPaired '{}[]'
)

matching_brackets_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_10  =: monad define
  Description=: 'paired and nested brackets'


  NB. value=. '([{}({}[])])'
  NB. expected=. 1
  assert 1 -: isPaired '([{}({}[])])'
)

matching_brackets_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_11  =: monad define
  Description=: 'unopened closing brackets'


  NB. value=. '{[)][]}'
  NB. expected=. 0
  assert 0 -: isPaired '{[)][]}'
)

matching_brackets_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_12  =: monad define
  Description=: 'unpaired and nested brackets'


  NB. value=. '([{])'
  NB. expected=. 0
  assert 0 -: isPaired '([{])'
)

matching_brackets_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_13  =: monad define
  Description=: 'paired and wrong nested brackets'


  NB. value=. '[({]})'
  NB. expected=. 0
  assert 0 -: isPaired '[({]})'
)

matching_brackets_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_14  =: monad define
  Description=: 'paired and wrong nested brackets but innermost are correct'


  NB. value=. '[({}])'
  NB. expected=. 0
  assert 0 -: isPaired '[({}])'
)

matching_brackets_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_15  =: monad define
  Description=: 'paired and incomplete brackets'


  NB. value=. '{}['
  NB. expected=. 0
  assert 0 -: isPaired '{}['
)

matching_brackets_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_16  =: monad define
  Description=: 'too many closing brackets'


  NB. value=. '[]]'
  NB. expected=. 0
  assert 0 -: isPaired '[]]'
)

matching_brackets_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_17  =: monad define
  Description=: 'early unexpected brackets'


  NB. value=. ')()'
  NB. expected=. 0
  assert 0 -: isPaired ')()'
)

matching_brackets_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_18  =: monad define
  Description=: 'early mismatched brackets'


  NB. value=. '{)()'
  NB. expected=. 0
  assert 0 -: isPaired '{)()'
)

matching_brackets_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_19  =: monad define
  Description=: 'math expression'


  NB. value=. '(((185 + 223.85) * 15) - 543)/2'
  NB. expected=. 1
  assert 1 -: isPaired '(((185 + 223.85) * 15) - 543)/2'
)

matching_brackets_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_20  =: monad define
  Description=: 'complex latex expression'


  NB. value=. '\left(\begin{array}{cc} \frac{1}{3} & x\\ \mathrm{e}^{x} &... x^2 \end{array}\right)'
  NB. expected=. 1
  assert 1 -: isPaired '\left(\begin{array}{cc} \frac{1}{3} & x\\ \mathrm{e}^{x} &... x^2 \end{array}\right)'
)

