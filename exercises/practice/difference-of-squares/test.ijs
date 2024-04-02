load 'difference-of-squares.ijs'

before_all=: monad define  
  order=: i.0
  tasks=: i.0
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


square_of_sum_5_ignore=: 0
test_square_of_sum_5  =: monad define
  order=: order , 1 [ tasks=: tasks , 1
  assert 225 = square_of_sum 5
)

square_of_sum_100_ignore=: 1 NB. Change this value to 0 to run this test
test_square_of_sum_100  =: monad define
  order=: order , 2 [ tasks=: tasks , 1
  assert 25502500 = square_of_sum 100
)

sum_of_square_1_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_1  =: monad define
  order=: order , 3 [ tasks=: tasks , 2
  assert 1 = sum_of_square 1
)

sum_of_square_5_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_5  =: monad define
  order=: order , 4 [ tasks=: tasks , 2
  assert 55 = sum_of_square 5
)

sum_of_square_100_ignore=: 1 NB. Change this value to 0 to run this test
test_sum_of_square_100  =: monad define
  order=: order , 5 [ tasks=: tasks , 2
  assert 338350 = sum_of_square 100
)

difference_of_squares_0_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_0  =: monad define
  order=: order , 6 [ tasks=: tasks , 3
  assert 0 = difference_of_squares 0
)

difference_of_squares_5_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_5  =: monad define
  order=: order , 7 [ tasks=: tasks , 3
  assert 170 = difference_of_squares 5
)

difference_of_squares_100_ignore=: 1 NB. Change this value to 0 to run this test
test_difference_of_squares_100  =: monad define
  order=: order , 8 [ tasks=: tasks , 3
  assert 25164150 = difference_of_squares 100
)