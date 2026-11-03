load 'nucleotide-count.ijs'


nucleotide_counts_test_01_ignore=: 0
test_nucleotide_counts_test_01  =: monad define
  Description=: 'empty strand'

  
  NB. strand  =. ''
  NB. expected=. 0 0 0 0
  assert 0 0 0 0 -: nucleotide_counts ''
)

nucleotide_counts_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_nucleotide_counts_test_02  =: monad define
  Description=: 'can count one nucleotide in single-character input'

  
  NB. strand  =. ,'G'
  NB. expected=. 0 0 1 0
  assert 0 0 1 0 -: nucleotide_counts ,'G'
)

nucleotide_counts_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_nucleotide_counts_test_03  =: monad define
  Description=: 'strand with repeated nucleotide'

  
  NB. strand  =. 'GGGGGGG'
  NB. expected=. 0 0 7 0
  assert 0 0 7 0 -: nucleotide_counts 'GGGGGGG'
)

nucleotide_counts_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_nucleotide_counts_test_04  =: monad define
  Description=: 'strand with multiple nucleotides'

  
  NB. strand  =. 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
  NB. expected=. 20 12 17 21
  assert 20 12 17 21 -: nucleotide_counts 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
)


NB. Error cases
NB. ===============================================================================================

nucleotide_counts_test_05_ignore=: 1 NB. Change this value to 0 to run this test
nucleotide_counts_test_05_expect=: 'domain error'
test_nucleotide_counts_test_05  =: monad define
  Description=: 'strand with invalid nucleotides'

  
  NB. strand  =. 'AGXXACT'
  NB. expected=. 'domain error'
  assert 0 -: nucleotide_counts 'AGXXACT'
)
