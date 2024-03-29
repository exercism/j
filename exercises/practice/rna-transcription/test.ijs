load'rna-transcription.ijs'

before_all=: monad define
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


empty_rna_sequence_ignore=: 0
test_empty_rna_sequence  =: monad define
  order=: order, 1
  assert '' -: rna''
)

rna_complement_of_cytosine_is_guanine_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_complement_of_cytosine_is_guanine  =: monad define
  order=: order, 2
  assert 'C' -: rna 'G'
)

rna_complement_of_guanine_is_cytosine_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_complement_of_guanine_is_cytosine  =: monad define
  order=: order, 3
  assert 'G' -: rna 'C'
)

rna_complement_of_thymine_is_adenine_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_complement_of_thymine_is_adenine  =: monad define
  order=: order, 4
  assert 'A' -: rna 'T'
)

rna_complement_of_adenine_is_uracil_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_complement_of_adenine_is_uracil  =: monad define
  order=: order, 5
  assert 'U' -: rna 'A'
)

rna_complement_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_complement  =: monad define
  order=: order, 6
  assert 'UGCACCAGAAUU' -: rna 'ACGTGGTCTTAA'
)
