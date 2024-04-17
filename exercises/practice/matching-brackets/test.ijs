load 'matching-brackets.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


matching_brackets_test_01_ignore=: 0
test_matching_brackets_test_01  =: monad define
  Description@.1 ('paired square brackets')
  Order@.1 (1)

  NB. value=. '[]'
  NB. expected=. 1
  assert 1 -: isPaired '[]'
)

matching_brackets_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_02  =: monad define
  Description@.1 ('empty string')
  Order@.1 (2)

  NB. value=. ''
  NB. expected=. 1
  assert 1 -: isPaired ''
)

matching_brackets_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_03  =: monad define
  Description@.1 ('unpaired brackets')
  Order@.1 (3)

  NB. value=. '[['
  NB. expected=. 0
  assert 0 -: isPaired '[['
)

matching_brackets_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_04  =: monad define
  Description@.1 ('wrong ordered brackets')
  Order@.1 (4)

  NB. value=. '}{'
  NB. expected=. 0
  assert 0 -: isPaired '}{'
)

matching_brackets_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_05  =: monad define
  Description@.1 ('wrong closing bracket')
  Order@.1 (5)

  NB. value=. '{]'
  NB. expected=. 0
  assert 0 -: isPaired '{]'
)

matching_brackets_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_06  =: monad define
  Description@.1 ('paired with whitespace')
  Order@.1 (6)

  NB. value=. '{ }'
  NB. expected=. 1
  assert 1 -: isPaired '{ }'
)

matching_brackets_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_07  =: monad define
  Description@.1 ('partially paired brackets')
  Order@.1 (7)

  NB. value=. '{[])'
  NB. expected=. 0
  assert 0 -: isPaired '{[])'
)

matching_brackets_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_08  =: monad define
  Description@.1 ('simple nested brackets')
  Order@.1 (8)

  NB. value=. '{[]}'
  NB. expected=. 1
  assert 1 -: isPaired '{[]}'
)

matching_brackets_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_09  =: monad define
  Description@.1 ('several paired brackets')
  Order@.1 (9)

  NB. value=. '{}[]'
  NB. expected=. 1
  assert 1 -: isPaired '{}[]'
)

matching_brackets_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_10  =: monad define
  Description@.1 ('paired and nested brackets')
  Order@.1 (10)

  NB. value=. '([{}({}[])])'
  NB. expected=. 1
  assert 1 -: isPaired '([{}({}[])])'
)

matching_brackets_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_11  =: monad define
  Description@.1 ('unopened closing brackets')
  Order@.1 (11)

  NB. value=. '{[)][]}'
  NB. expected=. 0
  assert 0 -: isPaired '{[)][]}'
)

matching_brackets_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_12  =: monad define
  Description@.1 ('unpaired and nested brackets')
  Order@.1 (12)

  NB. value=. '([{])'
  NB. expected=. 0
  assert 0 -: isPaired '([{])'
)

matching_brackets_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_13  =: monad define
  Description@.1 ('paired and wrong nested brackets')
  Order@.1 (13)

  NB. value=. '[({]})'
  NB. expected=. 0
  assert 0 -: isPaired '[({]})'
)

matching_brackets_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_14  =: monad define
  Description@.1 ('paired and wrong nested brackets but innermost are correct')
  Order@.1 (14)

  NB. value=. '[({}])'
  NB. expected=. 0
  assert 0 -: isPaired '[({}])'
)

matching_brackets_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_15  =: monad define
  Description@.1 ('paired and incomplete brackets')
  Order@.1 (15)

  NB. value=. '{}['
  NB. expected=. 0
  assert 0 -: isPaired '{}['
)

matching_brackets_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_16  =: monad define
  Description@.1 ('too many closing brackets')
  Order@.1 (16)

  NB. value=. '[]]'
  NB. expected=. 0
  assert 0 -: isPaired '[]]'
)

matching_brackets_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_17  =: monad define
  Description@.1 ('early unexpected brackets')
  Order@.1 (17)

  NB. value=. ')()'
  NB. expected=. 0
  assert 0 -: isPaired ')()'
)

matching_brackets_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_18  =: monad define
  Description@.1 ('early mismatched brackets')
  Order@.1 (18)

  NB. value=. '{)()'
  NB. expected=. 0
  assert 0 -: isPaired '{)()'
)

matching_brackets_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_19  =: monad define
  Description@.1 ('math expression')
  Order@.1 (19)

  NB. value=. '(((185 + 223.85) * 15) - 543)/2'
  NB. expected=. 1
  assert 1 -: isPaired '(((185 + 223.85) * 15) - 543)/2'
)

matching_brackets_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_matching_brackets_test_20  =: monad define
  Description@.1 ('complex latex expression')
  Order@.1 (20)

  NB. value=. '\left(\begin{array}{cc} \frac{1}{3} & x\\ \mathrm{e}^{x} &... x^2 \end{array}\right)'
  NB. expected=. 1
  assert 1 -: isPaired '\left(\begin{array}{cc} \frac{1}{3} & x\\ \mathrm{e}^{x} &... x^2 \end{array}\right)'
)

