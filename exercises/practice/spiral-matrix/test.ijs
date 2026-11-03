load 'spiral-matrix.ijs'


spiral_matrix_test_01_ignore=: 0
test_spiral_matrix_test_01  =: monad define
  Description=: 'empty spiral'


  NB. size=. 0
  expected=. 0 0$''
  assert (0 0$'') -: spiral_matrix 0
)

spiral_matrix_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_02  =: monad define
  Description=: 'trivial spiral'


  NB. size=. 1
  expected=.  1 1$1
  assert (1 1$1) -: spiral_matrix 1
)

spiral_matrix_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_03  =: monad define
  Description=: 'spiral of size 2'


  NB. size=. 2
  expected=. 2 2$1 2 4 3
  assert (2 2$1 2 4 3) -: spiral_matrix 2
)

spiral_matrix_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_04  =: monad define
  Description=: 'spiral of size 3'


  NB. size=. 3
  expected=.  3 3$1 2 3 8 9 4 7 6 5
  assert (3 3$1 2 3 8 9 4 7 6 5) -: spiral_matrix 3
)

spiral_matrix_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_05  =: monad define
  Description=: 'spiral of size 4'


  NB. size=. 4
  expected=. 4 4$1 2 3 4 12 13 14 5 11 16 15 6 10 9 8 7
  assert (4 4$1 2 3 4 12 13 14 5 11 16 15 6 10 9 8 7) -: spiral_matrix 4
)

spiral_matrix_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_06  =: monad define
  Description=: 'spiral of size 5'


  NB. size=. 5
  expected=. 5 5$1 2 3 4 5 16 17 18 19 6 15 24 25 20 7 14 23 22 21 8 13 12 11 10 9
  assert (5 5$1 2 3 4 5 16 17 18 19 6 15 24 25 20 7 14 23 22 21 8 13 12 11 10 9) -: spiral_matrix 5
)

