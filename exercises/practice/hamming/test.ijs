load'hamming.ijs'

before_all=: monad define
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)

empty_strands_ignore=: 0
test_empty_strands=: monad define
  order=: order , 1
  assert 0 = '' hamming ''
)

single_letter_identical_strands_ignore=: 0
test_single_letter_identical_strands=: monad define
  order=: order , 2
  assert 0 = (1$'A') hamming (1$'A')
)

single_letter_different_strands_ignore=: 0
test_single_letter_different_strands=: monad define
  order=: order , 3
  assert 1 = (1$'G') hamming (1$'T')
)

long_identical_strands_ignore=: 0
test_long_identical_strands=: monad define
  order=: order , 4
  assert 0 = 'GGACTGAAATCTG' hamming 'GGACTGAAATCTG'
)

long_different_strands_ignore=: 0
test_long_different_strands=: monad define
  order=: order , 5
  assert 9 = 'GGACGGATTCTG' hamming 'AGGACGGATTCT'
)