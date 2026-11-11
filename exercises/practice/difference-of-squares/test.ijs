load 'difference-of-squares.ijs'


square_of_sum_test_01_ignore=: 0
test_square_of_sum_test_01  =: monad define
  Description=: 'square of sum 1'
    
  NB. number   =. 1
  NB. expected =. 1
  assert 1 -: square_of_sum 1
)

square_of_sum_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_square_of_sum_test_02  =: monad define
  Description=: 'square of sum 5'
    
  NB. number   =. 5
  NB. expected =. 225
  assert 225 -: square_of_sum 5
)

square_of_sum_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_square_of_sum_test_03  =: monad define
  Description=: 'square of sum 100'
    
  NB. number   =. 100
  NB. expected =. 25502500
  assert 25502500 -: square_of_sum 100
)

sum_of_square_test_01_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_test_01  =: monad define
  Description=: 'sum of squares 1'
    
  NB. number   =. 1
  NB. expected =. 1
  assert 1 -: sum_of_square 1
)

sum_of_square_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_test_02  =: monad define
  Description=: 'sum of squares 5'
    
  NB. number   =. 5
  NB. expected =. 55
  assert 55 -: sum_of_square 5
)

sum_of_square_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_test_03  =: monad define
  Description=: 'sum of squares 100'
    
  NB. number   =. 100
  NB. expected =. 338350
  assert 338350 -: sum_of_square 100
)

difference_of_squares_test_01_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_test_01  =: monad define
  Description=: 'difference of squares 1'
    
  NB. number   =. 1
  NB. expected =. 0
  assert 0 -: difference_of_squares 1
)

difference_of_squares_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_test_02  =: monad define
  Description=: 'difference of squares 5'
    
  NB. number   =. 5
  NB. expected =. 170
  assert 170 -: difference_of_squares 5
)

difference_of_squares_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_test_03  =: monad define
  Description=: 'difference of squares 100'
    
  NB. number   =. 100
  NB. expected =. 25164150
  assert 25164150 -: difference_of_squares 100
)
