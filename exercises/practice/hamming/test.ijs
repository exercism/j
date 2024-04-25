load 'hamming.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


hamming_test_01_ignore=: 0
test_hamming_test_01  =: monad define
  Description@.1 ('empty strands')
  Order@.1 (1)

  strand1  =. '' 
  strand2  =. '' 
  expected =. 0
  assert expected -: strand1 distance strand2
)

hamming_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_02  =: monad define
  Description@.1 ('single letter identical strands')
  Order@.1 (2)

  strand1  =. 'A' 
  strand2  =. 'A' 
  expected =. 0
  assert expected -: strand1 distance strand2
)

hamming_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_03  =: monad define
  Description@.1 ('single letter different strands')
  Order@.1 (3)

  strand1  =. 'G' 
  strand2  =. 'T' 
  expected =. 1
  assert expected -: strand1 distance strand2
)

hamming_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_04  =: monad define
  Description@.1 ('long identical strands')
  Order@.1 (4)

  strand1  =. 'GGACTGAAATCTG' 
  strand2  =. 'GGACTGAAATCTG' 
  expected =. 0
  assert expected -: strand1 distance strand2
)

hamming_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_05  =: monad define
  Description@.1 ('long different strands')
  Order@.1 (5)

  strand1  =. 'GGACGGATTCTG' 
  strand2  =. 'AGGACGGATTCT' 
  expected =. 9
  assert expected -: strand1 distance strand2 
)

hamming_test_06_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_06_expect=: 'length error'
test_hamming_test_06  =: monad define
  Description@.1 ('disallow first strand longer')
  Order@.1 (6)

  strand1  =. 'AATG'
  strand2  =. 'AAA'
  expected =. 'length error'
  assert strand1 distance strand2
)

hamming_test_07_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_07_expect=: 'length error'
test_hamming_test_07  =: monad define
  Description@.1 ('disallow second strand longer')
  Order@.1 (7)

  strand1  =. 'ATA'
  strand2  =. 'AGTG'
  expected =. 'length error'
  assert strand1 distance strand2
)

hamming_test_08_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_08_expect=: 'length error'
test_hamming_test_08  =: monad define
  Description@.1 ('disallow left empty strand')
  Order@.1 (8)

  strand1  =. ''
  strand2  =. ,'G'
  expected =. 'length error'
  assert strand1 distance strand2
)

hamming_test_09_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_09_expect=: 'length error'
test_hamming_test_09  =: monad define
  Description@.1 ('disallow empty second strand')
  Order@.1 (9)

  strand1  =. ,'G'
  strand2  =. ''
  expected =. 'length error'
  assert strand1 distance strand2
)

