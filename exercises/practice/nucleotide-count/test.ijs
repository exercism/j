load'nucleotide-count.ijs'

before_all=: monad define
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


empty_strand_ignore=: 0
test_empty_strand=: monad define
  order=: order , 1
  assert 0 0 0 0 -: ntc ''
)

single_nucleotide_in_single_char_input_ignore=: 0
test_single_nucleotide_in_single_char_input=: monad define
  order=: order , 2
  assert 0 0 1 0 -: ntc 1$'G'
)

strand_with_repeated_nucleotide_ignore=: 0
test_strand_with_repeated_nucleotide=: monad define
  order=: order , 3
  assert 0 0 7 0 -: ntc 'GGGGGGG'
)

strand_with_multiple_nucleotides_ignore=: 0
test_strand_with_multiple_nucleotides=: monad define
  order=: order , 4
  assert 20 12 17 21 -: ntc 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
)