load 'rna-transcription.ijs'


rna_transcription_test_01_ignore=: 0
test_rna_transcription_test_01  =: monad define
  Description=: 'Empty RNA sequence'

  
  NB. expected=. ''
  assert '' -:&, to_rna ''
)

rna_transcription_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_02  =: monad define
  Description=: 'RNA complement of cytosine is guanine'

  
  NB. expected=. 'C'
  assert 'C' -:&, to_rna 'G'
)

rna_transcription_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_03  =: monad define
  Description=: 'RNA complement of guanine is cytosine'

  
  NB. expected=. 'G'
  assert 'G' -:&, to_rna 'C'
)

rna_transcription_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_04  =: monad define
  Description=: 'RNA complement of thymine is adenine'

  
  NB. expected=. 'A'
  assert 'A' -:&, to_rna'T'
)

rna_transcription_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_05  =: monad define
  Description=: 'RNA complement of adenine is uracil'

  
  NB. expected=. 'U'
  assert 'U' -:&, to_rna'A'
)

rna_transcription_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_rna_transcription_test_06  =: monad define
  Description=: 'RNA complement'

  
  NB. expected=. 'UGCACCAGAAUU'
  assert 'UGCACCAGAAUU' -:&, to_rna 'ACGTGGTCTTAA'
)
