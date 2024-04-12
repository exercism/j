load 'difference-of-squares.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


square_of_sum_test_01_ignore=: 0
test_square_of_sum_test_01  =: monad define
  Description@.1 ('square of sum 1')
  Order@.1 (1)
  Task@.1 (1)
  
  NB. number=. 1
  NB. expected=. 1
  assert 1 = square_of_sum 1
)

square_of_sum_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_square_of_sum_test_02  =: monad define
  Description@.1 ('square of sum 5')
  Order@.1 (2)
  Task@.1 (1)
  
  NB. number=. 5
  NB. expected=. 225
  assert 225 = square_of_sum 5
)

square_of_sum_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_square_of_sum_test_03  =: monad define
  Description@.1 ('square of sum 100')
  Order@.1 (3)
  Task@.1 (1)
  
  NB. number=. 100
  NB. expected=. 25502500
  assert 25502500 = square_of_sum 100
)

sum_of_square_test_01_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_test_01  =: monad define
  Description@.1 ('sum of squares 1')
  Order@.1 (4)
  Task@.1 (2)
  
  NB. number=. 1
  NB. expected=. 1
  assert 1 = sum_of_square 1
)

sum_of_square_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_test_02  =: monad define
  Description@.1 ('sum of squares 5')
  Order@.1 (5)
  Task@.1 (2)
  
  NB. number=. 5
  NB. expected=. 55
  assert 55 = sum_of_square 5
)

sum_of_square_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_test_03  =: monad define
  Description@.1 ('sum of squares 100')
  Order@.1 (6)
  Task@.1 (2)
  
  NB. number=. 100
  NB. expected=. 338350
  assert 338350 = sum_of_square 100
)

difference_of_squares_test_01_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_test_01  =: monad define
  Description@.1 ('difference of squares 1')
  Order@.1 (7)
  Task@.1 (3)
  
  NB. number=. 1
  NB. expected=. 0
  assert 0 = difference_of_squares 1
)

difference_of_squares_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_test_02  =: monad define
  Description@.1 ('difference of squares 5')
  Order@.1 (8)
  Task@.1 (3)
  
  NB. number=. 5
  NB. expected=. 170
  assert 170 = difference_of_squares 5
)

difference_of_squares_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_test_03  =: monad define
  Description@.1 ('difference of squares 100')
  Order@.1 (9)
  Task@.1 (3)
  
  NB. number=. 100
  NB. expected=. 25164150
  assert 25164150 = difference_of_squares 100
)
