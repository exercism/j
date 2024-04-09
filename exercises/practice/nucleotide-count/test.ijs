load 'nucleotide-count.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


nucleotide_counts_test_01_ignore=: 0
test_nucleotide_counts_test_01  =: monad define
  Description@.1 ('empty strand')
  Order@.1 (1)
  
  NB. Expected=: 0 0 0 0
  assert 0 0 0 0 -: nucleotide_counts ''
)

nucleotide_counts_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_nucleotide_counts_test_02  =: monad define
  Description@.1 ('can count one nucleotide in single-character input')
  Order@.1 (2)
  
  NB. Expected=: 0 0 1 0
  assert 0 0 1 0 -: nucleotide_counts 1$'G'
)

nucleotide_counts_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_nucleotide_counts_test_03  =: monad define
  Description@.1 ('strand with repeated nucleotide')
  Order@.1 (3)
  
  NB. Expected=: 0 0 7 0
  assert 0 0 7 0 -: nucleotide_counts 'GGGGGGG'
)

nucleotide_counts_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_nucleotide_counts_test_04  =: monad define
  Description@.1 ('strand with multiple nucleotides')
  Order@.1 (4)
  
  NB. Expected=: 20 12 17 21
  assert 20 12 17 21 -: nucleotide_counts 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
)

nucleotide_counts_test_05_ignore=: 1 NB. Change this value to 0 to run this test
nucleotide_counts_test_05_expect=: 'domain error'
test_nucleotide_counts_test_05  =: monad define
  Description@.1 ('strand with invalid nucleotides')
  Order@.1 (5)
  
  NB. Expected=: 'domain error'
  assert (>@{: 9!:8 '') -: nucleotide_counts 'AGXXACT'
)
