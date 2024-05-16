load 'acronym.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


acronym_test_01_ignore=: 0
test_acronym_test_01  =: monad define
  Description@.1 ('basic')
  Order@.1 (1)

  NB. phrase   =. 'Portable Network Graphics'
  NB. expected =. 'PNG'
  assert 'PNG' -: abbreviate 'Portable Network Graphics'
)

acronym_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_02  =: monad define
  Description@.1 ('lowercase words')
  Order@.1 (2)

  NB. phrase   =. 'Ruby on Rails'
  NB. expected =. 'ROR'
  assert 'ROR' -: abbreviate 'Ruby on Rails'
)

acronym_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_03  =: monad define
  Description@.1 ('punctuation')
  Order@.1 (3)

  NB. phrase   =. 'First In, First Out'
  NB. expected =. 'FIFO'
  assert 'FIFO' -: abbreviate 'First In, First Out'
)

acronym_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_04  =: monad define
  Description@.1 ('all caps word')
  Order@.1 (4)

  NB. phrase   =. 'GNU Image Manipulation Program'
  NB. expected =. 'GIMP'
  assert 'GIMP' -: abbreviate 'GNU Image Manipulation Program'
)

acronym_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_05  =: monad define
  Description@.1 ('punctuation without whitespace')
  Order@.1 (5)

  NB. phrase   =. 'Complementary metal-oxide semiconductor'
  NB. expected =. 'CMOS'
  assert 'CMOS' -: abbreviate 'Complementary metal-oxide semiconductor'
)

acronym_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_06  =: monad define
  Description@.1 ('very long abbreviation')
  Order@.1 (6)

  NB. phrase   =. 'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me'
  NB. expected =. 'ROTFLSHTMDCOALM'
  assert 'ROTFLSHTMDCOALM' -: abbreviate 'Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me'
)

acronym_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_07  =: monad define
  Description@.1 ('consecutive delimiters')
  Order@.1 (7)

  NB. phrase   =. 'Something - I made up from thin air'
  NB. expected =. 'SIMUFTA'
  assert 'SIMUFTA' -: abbreviate 'Something - I made up from thin air'
)

acronym_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_08  =: monad define
  Description@.1 ('apostrophes')
  Order@.1 (8)

  NB. phrase   =. 'Halley's Comet'
  NB. expected =. 'HC'
  assert 'HC' -: abbreviate 'Halley''s Comet'
)

acronym_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_acronym_test_09  =: monad define
  Description@.1 ('underscore emphasis')
  Order@.1 (9)

  NB. phrase   =. 'The Road _Not_ Taken'
  NB. expected =. 'TRNT'
  assert 'TRNT' -: abbreviate 'The Road _Not_ Taken'
)

