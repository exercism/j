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

  NB. strand1=. '' 
  NB. strand2=. '' 
  NB. expected=. 0
  assert 0 = '' distance ''
)

hamming_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_02  =: monad define
  Description@.1 ('single letter identical strands')
  Order@.1 (2)

  NB. strand1=. 'A' 
  NB. strand2=. 'A' 
  NB. expected=. 0
  assert 0 = 'A' distance 'A'
)

hamming_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_03  =: monad define
  Description@.1 ('single letter different strands')
  Order@.1 (3)

  NB. strand1=. 'G' 
  NB. strand2=. 'T' 
  NB. expected=. 1
  assert 1 = 'G' distance 'T'
)

hamming_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_04  =: monad define
  Description@.1 ('long identical strands')
  Order@.1 (4)

  NB. strand1=. 'GGACTGAAATCTG' 
  NB. strand2=. 'GGACTGAAATCTG' 
  NB. expected=. 0
  assert 0 = 'GGACTGAAATCTG' distance 'GGACTGAAATCTG'
)

hamming_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_hamming_test_05  =: monad define
  Description@.1 ('long different strands')
  Order@.1 (5)

  NB. strand1=. 'GGACGGATTCTG' 
  NB. strand2=. 'AGGACGGATTCT' 
  NB. expected=. 9
  assert 9 = 'GGACGGATTCTG' distance 'AGGACGGATTCT' 
)

hamming_test_06_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_06_expect=: 'length error'
test_hamming_test_06  =: monad define
  Description@.1 ('disallow first strand longer')
  Order@.1 (6)

  NB. strand1=. 'AATG'
  NB. strand2=. 'AAA'
  NB. expected=. 'length error'
  assert 'AATG' distance 'AAA'
)

hamming_test_07_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_07_expect=: 'length error'
test_hamming_test_07  =: monad define
  Description@.1 ('disallow second strand longer')
  Order@.1 (7)

  NB. strand1=. 'ATA'
  NB. strand2=. 'AGTG'
  NB. expected=. 'length error'
  assert 'ATA' distance 'AGTG'
)

hamming_test_08_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_08_expect=: 'length error'
test_hamming_test_08  =: monad define
  Description@.1 ('disallow left empty strand')
  Order@.1 (8)

  NB. strand1=. 0$''
  NB. strand2=. 1$'G'
  NB. expected=. 'length error'
  assert (0$'') distance (1$'G')
)

hamming_test_09_ignore=: 1 NB. Change this value to 0 to run this test
hamming_test_09_expect=: 'length error'
test_hamming_test_09  =: monad define
  Description@.1 ('disallow empty second strand')
  Order@.1 (9)

  NB. strand1=. 1$'G'
  NB. strand2=. 0$''
  NB. expected=. 'length error'
  assert (1$'G') distance (0$'')
)

