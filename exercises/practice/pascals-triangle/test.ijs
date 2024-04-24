load 'pascals-triangle.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


pascals_triangle_test_01_ignore=: 0
test_pascals_triangle_test_01  =: monad define
  Description@.1 ('zero rows')
  Order@.1 (1)

  NB. count=: 0
  expected=. 0 0$''
  assert expected -: > pascal 0    
)

pascals_triangle_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_02  =: monad define
  Description@.1 ('single row')
  Order@.1 (2)

  NB. count=: 1
  expected=. 1 1$1
  assert expected -: > pascal 1
)

pascals_triangle_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_03  =: monad define
  Description@.1 ('two rows')
  Order@.1 (3)

  NB. count=: 2
  expected=. > 1 ; 1 1
  assert expected -: > pascal 2
)

pascals_triangle_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_04  =: monad define
  Description@.1 ('three rows')
  Order@.1 (4)

  NB. count=: 3
  expected=. > 1 ; 1 1 ; 1 2 1
  assert expected -: > pascal 3
)

pascals_triangle_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_05  =: monad define
  Description@.1 ('four rows')
  Order@.1 (5)

  NB. count=: 4
  expected=. > 1 ; 1 1 ; 1 2 1 ; 1 3 3 1
  assert expected -: > pascal 4
)

pascals_triangle_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_06  =: monad define
  Description@.1 ('five rows')
  Order@.1 (6)

  NB. count=: 5
  expected=. > 1 ; 1 1 ; 1 2 1 ; 1 3 3 1 ; 1 4 6 4 1
  assert expected -: > pascal 5
)

pascals_triangle_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_07  =: monad define
  Description@.1 ('six rows')
  Order@.1 (7)

  NB. count=: 6
  expected=. > 1 ; 1 1 ; 1 2 1 ; 1 3 3 1 ; 1 4 6 4 1 ; 1 5 10 10 5 1
  assert expected -: > pascal 6
)

pascals_triangle_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_pascals_triangle_test_08  =: monad define
  Description@.1 ('ten rows')
  Order@.1 (8)

  NB. count=: 10
  expected=: > 1 ; 1 1 ; 1 2 1 ; 1 3 3 1 ; 1 4 6 4 1 ; 1 5 10 10 5 1 ; 1 6 15 20 15 6 1 ; 1 7 21 35 35 21 7 1 ; 1 8 28 56 70 56 28 8 1 ; 1 9 36 84 126 126 84 36 9 1
  assert expected -: > pascal 10
)
