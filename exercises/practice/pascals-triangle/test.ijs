load'pascals-triangle.ijs'

before_all=: monad define
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


zero_rows_ignore=: 0 
test_zero_rows  =: monad define
  order    =: order, 1
  expected =. 0 0$''
  assert expected -: pascal 0
)

single_row_ignore=: 1 NB. Change this value to 0 to run this test
test_single_row  =: monad define
  order    =: order, 2
  expected =: 1 1$1
  assert expected -: pascal 1
)

two_rows_ignore=: 1 NB. Change this value to 0 to run this test
test_two_rows  =: monad define
  order    =: order, 3
  expected =. 2 2$1 0 1 1
  assert expected -: pascal 2
)

three_rows_ignore=: 1 NB. Change this value to 0 to run this test
test_three_rows  =: monad define
  order    =: order, 3
  expected =: 3 3$1 0 0 1 1 0 1 2 1
  assert expected -: pascal 3
)

four_rows_ignore=: 1 NB. Change this value to 0 to run this test
test_four_rows  =: monad define
  order    =: order, 4
  expected =: 4 4$1 0 0 0 1 1 0 0 1 2 1 0 1 3 3 1
  assert expected -: pascal 4
)

five_rows_ignore=: 1 NB. Change this value to 0 to run this test
test_five_rows  =: monad define
  order    =: order, 5
  expected =. 5 5$1 0 0 0 0 1 1 0 0 0 1 2 1 0 0 1 3 3 1 0 1 4 6 4 1
  assert expected -: pascal 5
)

six_rows_ignore=: 1 NB. Change this value to 0 to run this test
test_six_rows  =: monad define
  order    =: order, 6
  expected =. 6 6$1 0 0 0 0 0 1 1 0 0 0 0 1 2 1 0 0 0 1 3 3 1 0 0 1 4 6 4 1 0 1 5 10 10 5 1 
  assert expected -: pascal 6
)

ten_rows_ignore=: 1 NB. Change this value to 0 to run this test
test_ten_rows  =: monad define
  order    =: order, 7
  expected =. 10 10$1 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 1 2 1 0 0 0 0 0 0 0 1 3 3 1 0 0 0 0 0 0 1 4 6 4 1 0 0 0 0 0 1 5 10 10 5 1 0 0 0 0 1 6 15 20 15 6 1 0 0 0 1 7 21 35 35 21 7 1 0 0 1 8 28 56 70 56 28 8 1 0 1 9 36 84 126 126 84 36 9 1
  assert expected -: pascal 10
)