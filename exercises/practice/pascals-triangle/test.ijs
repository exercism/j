load 'pascals-triangle.ijs'


pascals_triangle_test_01_ignore=: 0
test_pascals_triangle_test_01  =: monad define
  Description=: 'zero rows'


  NB. count    =. 0
  NB. expected =. 0 0$''
  assert (0 0$'') -:&:> pascal 0    
)

pascals_triangle_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_02  =: monad define
  Description=: 'single row'


  NB. count    =. 1
  NB. expected =. 1 1$1
  assert (1 1$1) -:&:> pascal 1
)

pascals_triangle_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_03  =: monad define
  Description=: 'two rows'


  NB. count    =. 2
  NB. expected =. 1;1 1
  assert (1;1 1) -:&:> pascal 2
)

pascals_triangle_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_04  =: monad define
  Description=: 'three rows'


  NB. count    =. 3
  NB. expected =. 1;1 1;1 2 1
  assert (1;1 1;1 2 1) -:&:> pascal 3
)

pascals_triangle_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_05  =: monad define
  Description=: 'four rows'


  NB. count    =. 4
  NB. expected =. 1;1 1;1 2 1;1 3 3 1
  assert (1;1 1;1 2 1;1 3 3 1) -:&:> pascal 4
)

pascals_triangle_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_06  =: monad define
  Description=: 'five rows'


  NB. count    =. 5
  NB. expected =. 1;1 1;1 2 1;1 3 3 1;1 4 6 4 1
  assert (1;1 1;1 2 1;1 3 3 1;1 4 6 4 1) -:&:> pascal 5
)

pascals_triangle_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_07  =: monad define
  Description=: 'six rows'


  NB. count    =. 6
  NB. expected =. 1;1 1;1 2 1;1 3 3 1;1 4 6 4 1;1 5 10 10 5 1
  assert (1;1 1;1 2 1;1 3 3 1;1 4 6 4 1;1 5 10 10 5 1) -:&:> pascal 6
)

pascals_triangle_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_08  =: monad define
  Description=: 'ten rows'


  NB. count    =. 10
  NB. expected =. 1;1 1;1 2 1;1 3 3 1;1 4 6 4 1;1 5 10 10 5 1;1 6 15 20 15 6 1;1 7 21 35 35 21 7 1;1 8 28 56 70 56 28 8 1;1 9 36 84 126 126 84 36 9 1
  assert (1;1 1;1 2 1;1 3 3 1;1 4 6 4 1;1 5 10 10 5 1;1 6 15 20 15 6 1;1 7 21 35 35 21 7 1;1 8 28 56 70 56 28 8 1;1 9 36 84 126 126 84 36 9 1) -:&:> pascal 10
)
