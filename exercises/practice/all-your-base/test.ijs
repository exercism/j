load 'all-your-base.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


all_your_base_test_01_ignore=: 0
test_all_your_base_test_01  =: monad define
  Description@.1 ('single bit one to decimal')
  Order@.1 (1)

  input_base  =. 2
  digits      =. 1$1
  output_base =. 10
  expected    =. 1$1

  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_02  =: monad define
  Description@.1 ('binary to single decimal')
  Order@.1 (2)

  input_base  =. 2
  digits      =. 1 0 1
  output_base =. 10
  expected    =. 1$5
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_03  =: monad define
  Description@.1 ('single decimal to binary')
  Order@.1 (3)

  input_base  =. 10
  digits      =. 1$5
  output_base =. 2
  expected    =. 1 0 1
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_04  =: monad define
  Description@.1 ('binary to multiple decimal')
  Order@.1 (4)

  input_base  =. 2
  digits      =. 1 0 1 0 1 0
  output_base =. 10
  expected    =. 4 2
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_05  =: monad define
  Description@.1 ('decimal to binary')
  Order@.1 (5)

  input_base  =. 10
  digits      =. 4 2
  output_base =. 2
  expected    =. 1 0 1 0 1 0
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_06  =: monad define
  Description@.1 ('trinary to hexadecimal')
  Order@.1 (6)

  input_base  =. 3
  digits      =. 1 1 2 0
  output_base =. 16
  expected    =. 2 10
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_07  =: monad define
  Description@.1 ('hexadecimal to trinary')
  Order@.1 (7)

  input_base  =. 16
  digits      =. 2 10
  output_base =. 3
  expected    =. 1 1 2 0
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_08  =: monad define
  Description@.1 ('15-bit integer')
  Order@.1 (8)

  input_base  =. 97
  digits      =. 3 46 60
  output_base =. 73
  expected    =. 6 10 45
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_09  =: monad define
  Description@.1 ('empty list')
  Order@.1 (9)

  input_base  =. 2
  digits      =. ''
  output_base =. 10
  expected    =. 1$0
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_10  =: monad define
  Description@.1 ('single zero')
  Order@.1 (10)

  input_base  =. 10
  digits      =. 1$0
  output_base =. 2
  expected    =. 1$0
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_11  =: monad define
  Description@.1 ('multiple zeros')
  Order@.1 (11)

  input_base  =. 10
  digits      =. 0 0 0
  output_base =. 2
  expected    =. 1$0
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_12  =: monad define
  Description@.1 ('leading zeros')
  Order@.1 (12)

  input_base  =. 7
  digits      =. 0 6 0
  output_base =. 10
  expected    =. 4 2
  assert expected -: rebase input_base; digits; output_base
)


NB. Error cases
NB. =============================================================================

all_your_base_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_13  =: monad define
  Description@.1 ('input base is one')
  Order@.1 (13)

  input_base  =. 1
  digits      =. 1$0
  output_base =. 10
  expected    =. ''    NB. error=. 'input base must be >= 2'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_14  =: monad define
  Description@.1 ('input base is zero')
  Order@.1 (14)

  input_base  =. 0
  digits      =. ''
  output_base =. 10
  expected    =.  ''   NB. error=. 'input base must be >= 2'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_15  =: monad define
  Description@.1 ('input base is negative')
  Order@.1 (15)

  input_base  =. _2
  digits      =. 1$1
  output_base =. 10
  expected    =.  ''   NB. error=. 'input base must be >= 2'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_16  =: monad define
  Description@.1 ('negative digit')
  Order@.1 (16)

  input_base  =. 2
  digits      =. 1 _1 1 0 1 0
  output_base =. 10
  expected    =.  ''   NB. error=. 'all digits must satisfy 0 <= d < input base'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_17  =: monad define
  Description@.1 ('invalid positive digit')
  Order@.1 (17)

  input_base  =. 2
  digits      =. 1 2 1 0 1 0
  output_base =. 10
  expected    =.  ''   NB. error=. 'all digits must satisfy 0 <= d < input base'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_18  =: monad define
  Description@.1 ('output base is one')
  Order@.1 (18)

  input_base  =. 2
  digits      =. 1 0 1 0 1 0
  output_base =. 1
  expected    =.  ''   NB. error=. 'output base must be >= 2'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_19  =: monad define
  Description@.1 ('output base is zero')
  Order@.1 (19)

  input_base  =. 10
  digits      =. 1$7
  output_base =. 0
  expected    =.  ''   NB. error=. 'output base must be >= 2'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_20  =: monad define
  Description@.1 ('output base is negative')
  Order@.1 (20)

  input_base  =. 2
  digits      =. 1$1
  output_base =. _7
  expected    =.  ''   NB. error=. 'output base must be >= 2'
  assert expected -: rebase input_base; digits; output_base
)

all_your_base_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_21  =: monad define
  Description@.1 ('both bases are negative')
  Order@.1 (21)

  input_base  =. _2
  digits      =. 1$1
  output_base =. _7
  expected    =.  ''   NB. error=. 'input base must be >= 2'
  assert expected -: rebase input_base; digits; output_base
)
