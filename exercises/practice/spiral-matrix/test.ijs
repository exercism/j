load 'spiral-matrix.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


spiral_matrix_test_01_ignore=: 0
test_spiral_matrix_test_01  =: monad define
  Description@.1 ('empty spiral')
  Order@.1 (1)

  NB. size=. 0
  expected=. 0 0$''
  assert expected -: spiral_matrix 0
)

spiral_matrix_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_02  =: monad define
  Description@.1 ('trivial spiral')
  Order@.1 (2)

  NB. size=. 1
  expected=.  1 1$1
  assert expected -: spiral_matrix 1
)

spiral_matrix_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_03  =: monad define
  Description@.1 ('spiral of size 2')
  Order@.1 (3)

  NB. size=. 2
  expected=.  > 1 2 ; 4 3
  assert expected -: spiral_matrix 2
)

spiral_matrix_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_04  =: monad define
  Description@.1 ('spiral of size 3')
  Order@.1 (4)

  NB. size=. 3
  expected=.  > 1 2 3 ; 8 9 4 ; 7 6 5
  assert expected -: spiral_matrix 3
)

spiral_matrix_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_05  =: monad define
  Description@.1 ('spiral of size 4')
  Order@.1 (5)

  NB. size=. 4
  expected=.  > 1 2 3 4 ; 12 13 14 5 ; 11 16 15 6 ; 10 9 8 7
  assert expected -: spiral_matrix 4
)

spiral_matrix_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_spiral_matrix_test_06  =: monad define
  Description@.1 ('spiral of size 5')
  Order@.1 (6)

  NB. size=. 5
  expected=. > 1 2 3 4 5 ; 16 17 18 19 6 ; 15 24 25 20 7 ; 14 23 22 21 8 ; 13 12 11 10 9
  assert expected -: spiral_matrix 5
)

