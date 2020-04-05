load'example.ijs'

test_sm_100=: monad define
assert 0=sm 100
)

test_sm_46_30=: monad define
assert 136=4 6 sm 30
)

test_sm_10_1000=: monad define
assert 49500=(,:10) sm 1000
)

test_sm_35_1000=: monad define
assert 233168=3 5 sm 1000
)

test_sm_235711_10000=: monad define
assert 39614537=2 3 5 7 11 sm 10000
)

REP=: sm f.