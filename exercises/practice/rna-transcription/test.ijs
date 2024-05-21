load 'rna-transcription.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


rna_transcription_test_01_ignore=: 0
test_rna_transcription_test_01  =: monad define
  Description@.1 ('Empty RNA sequence')
  Order@.1 (1)
  
  NB. expected=. ''
  assert '' -:&, to_rna ''
)

rna_transcription_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_02  =: monad define
  Description@.1 ('RNA complement of cytosine is guanine')
  Order@.1 (2)
  
  NB. expected=. 'C'
  assert 'C' -:&, to_rna 'G'
)

rna_transcription_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_03  =: monad define
  Description@.1 ('RNA complement of guanine is cytosine')
  Order@.1 (3)
  
  NB. expected=. 'G'
  assert 'G' -:&, to_rna 'C'
)

rna_transcription_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_04  =: monad define
  Description@.1 ('RNA complement of thymine is adenine')
  Order@.1 (4)
  
  NB. expected=. 'A'
  assert 'A' -:&, to_rna'T'
)

rna_transcription_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_05  =: monad define
  Description@.1 ('RNA complement of adenine is uracil')
  Order@.1 (5)
  
  NB. expected=. 'U'
  assert 'U' -:&, to_rna'A'
)

rna_transcription_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_06  =: monad define
  Description@.1 ('RNA complement')
  Order@.1 (6)
  
  NB. expected=. 'UGCACCAGAAUU'
  assert 'UGCACCAGAAUU' -:&, to_rna 'ACGTGGTCTTAA'
)
