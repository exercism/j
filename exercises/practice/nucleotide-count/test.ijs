load'nucleotide-count.ijs'

before_all=: monad define
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt' 
)


empty_strand_ignore=: 0
test_empty_strand  =: monad define
  order=: order , 1
  expected=. 0 0 0 0
  assert expected -: ntc ''
)

single_nucleotide_in_single_char_input_ignore=: 1 NB. Change this value to 0 to run this test
test_single_nucleotide_in_single_char_input  =: monad define
  order=: order , 2
  expected=. 0 0 1 0
  assert expected -: ntc 1$'G'
)

strand_with_repeated_nucleotide_ignore=: 1 NB. Change this value to 0 to run this test
test_strand_with_repeated_nucleotide  =: monad define
  order=: order , 3
  expected=. 0 0 7 0
  assert expected -: ntc 'GGGGGGG'
)

strand_with_multiple_nucleotides_ignore=: 1 NB. Change this value to 0 to run this test
test_strand_with_multiple_nucleotides  =: monad define
  order=: order , 4
  expected=. 20 12 17 21
  assert expected -: ntc 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
)