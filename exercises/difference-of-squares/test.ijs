load'difference-of-squares.ijs'

test_square_of_sum_5=: monad define
assert 225 = square_of_sum 5
)

test_square_of_sum_100=: monad define
assert 25502500 = square_of_sum 100
)

test_sum_of_square_1=: monad define
assert 1 = sum_of_square 1
)

test_sum_of_square_5=: monad define
assert 55 = sum_of_square 5
)

test_sum_of_square_100=: monad define
assert 338350 = sum_of_square 100
)

test_difference_of_squares_0=: monad define
assert 0 = difference_of_squares 0
)

test_difference_of_squares_5=: monad define
assert 170 = difference_of_squares 5
)

test_difference_of_squares_5=: monad define
assert 25164150 = difference_of_squares 100
)

REP=: (square_of_sum f.)`(sum_of_square f.)`(difference_of_squares f.)