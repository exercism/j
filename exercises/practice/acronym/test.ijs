load 'acronym.ijs'


acronym_test_01_ignore=: 0
test_acronym_test_01  =: monad define
  Description=: 'basic'


  NB. phrase   =. 'Portable Network Graphics'
  NB. expected =. 'PNG'
  assert 'PNG' -: abbreviate 'Portable Network Graphics'
)

acronym_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_02  =: monad define
  Description=: 'lowercase words'


  NB. phrase   =. 'Ruby on Rails'
  NB. expected =. 'ROR'
  assert 'ROR' -: abbreviate 'Ruby on Rails'
)

acronym_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_03  =: monad define
  Description=: 'punctuation'


  NB. phrase   =. 'First In, First Out'
  NB. expected =. 'FIFO'
  assert 'FIFO' -: abbreviate 'First In, First Out'
)

acronym_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_04  =: monad define
  Description=: 'all caps word'


  NB. phrase   =. 'GNU Image Manipulation Program'
  NB. expected =. 'GIMP'
  assert 'GIMP' -: abbreviate 'GNU Image Manipulation Program'
)

acronym_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_05  =: monad define
  Description=: 'punctuation without whitespace'


  NB. phrase   =. 'Complementary metal-oxide semiconductor'
  NB. expected =. 'CMOS'
  assert 'CMOS' -: abbreviate 'Complementary metal-oxide semiconductor'
)

acronym_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_06  =: monad define
  Description=: 'very long abbreviation'


  NB. phrase   =. 'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me'
  NB. expected =. 'ROTFLSHTMDCOALM'
  assert 'ROTFLSHTMDCOALM' -: abbreviate 'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me'
)

acronym_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_07  =: monad define
  Description=: 'consecutive delimiters'


  NB. phrase   =. 'Something - I made up from thin air'
  NB. expected =. 'SIMUFTA'
  assert 'SIMUFTA' -: abbreviate 'Something - I made up from thin air'
)

acronym_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_08  =: monad define
  Description=: 'apostrophes'


  NB. phrase   =. 'Halley's Comet'
  NB. expected =. 'HC'
  assert 'HC' -: abbreviate 'Halley''s Comet'
)

acronym_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_09  =: monad define
  Description=: 'underscore emphasis'


  NB. phrase   =. 'The Road _Not_ Taken'
  NB. expected =. 'TRNT'
  assert 'TRNT' -: abbreviate 'The Road _Not_ Taken'
)

