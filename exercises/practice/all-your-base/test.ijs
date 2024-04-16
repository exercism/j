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

  NB. inputBase=. 2
  NB. digits=. (1$1)
  NB. outputBase=. 10
  NB. expected=. 1$1
  assert (1$1) -: rebase 2; (1$1); 10
)

all_your_base_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_02  =: monad define
  Description@.1 ('binary to single decimal')
  Order@.1 (2)

  NB. inputBase=. 2
  NB. digits=. 1 0 1
  NB. outputBase=. 10
  NB. expected=. 1$5
  assert (1$5) -: rebase 2; 1 0 1 ;10
)

all_your_base_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_03  =: monad define
  Description@.1 ('single decimal to binary')
  Order@.1 (3)

  NB. inputBase=. 10
  NB. digits=. (1$5)
  NB. outputBase=. 2
  NB. expected=. 1 0 1
  assert 1 0 1 -: rebase 10; (1$5); 2
)

all_your_base_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_04  =: monad define
  Description@.1 ('binary to multiple decimal')
  Order@.1 (4)

  NB. inputBase=. 2
  NB. digits=. 1 0 1 0 1 0
  NB. outputBase=. 10
  NB. expected=. 4 2
  assert 4 2 -: rebase 2; 1 0 1 0 1 0; 10
)

all_your_base_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_05  =: monad define
  Description@.1 ('decimal to binary')
  Order@.1 (5)

  NB. inputBase=. 10
  NB. digits=. 4 2
  NB. outputBase=. 2
  NB. expected=. 1 0 1 0 1 0
  assert 1 0 1 0 1 0 -: rebase 10; 4 2; 2
)

all_your_base_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_06  =: monad define
  Description@.1 ('trinary to hexadecimal')
  Order@.1 (6)

  NB. inputBase=. 3
  NB. digits=. 1 1 2 0
  NB. outputBase=. 16
  NB. expected=. 2 10
  assert 2 10 -: rebase 3; 1 1 2 0; 16
)

all_your_base_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_07  =: monad define
  Description@.1 ('hexadecimal to trinary')
  Order@.1 (7)

  NB. inputBase=. 16
  NB. digits=. 2 10
  NB. outputBase=. 3
  NB. expected=. 1 1 2 0
  assert 1 1 2 0 -: rebase 16; 2 10; 3
)

all_your_base_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_08  =: monad define
  Description@.1 ('15-bit integer')
  Order@.1 (8)

  NB. inputBase=. 97
  NB. digits=. 3 46 60
  NB. outputBase=. 73
  NB. expected=. 6 10 45
  assert 6 10 45 -: rebase 97; 3 46 60; 73
)

all_your_base_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_09  =: monad define
  Description@.1 ('empty list')
  Order@.1 (9)

  NB. inputBase=. 2
  NB. digits=. ''
  NB. outputBase=. 10
  NB. expected=. 1$0
  assert (1$0) -: rebase 2; '';10
)

all_your_base_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_10  =: monad define
  Description@.1 ('single zero')
  Order@.1 (10)

  NB. inputBase=. 10
  NB. digits=. 1$0
  NB. outputBase=. 2
  NB. expected=. 1$0
  assert (1$0) -: rebase 10; (1$0); 2
)

all_your_base_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_11  =: monad define
  Description@.1 ('multiple zeros')
  Order@.1 (11)

  NB. inputBase=. 10
  NB. digits=. 0 0 0
  NB. outputBase=. 2
  NB. expected=. 1$0
  assert (1$0) -: rebase 10; 0 0 0; 2
)

all_your_base_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_12  =: monad define
  Description@.1 ('leading zeros')
  Order@.1 (12)

  NB. inputBase=. 7
  NB. digits=. 0 6 0
  NB. outputBase=. 10
  NB. expected=. 4 2
  assert 4 2 -: rebase 7; 0 6 0; 10
)


NB. Error cases
NB. =============================================================================

all_your_base_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_13  =: monad define
  Description@.1 ('input base is one')
  Order@.1 (13)

  NB. inputBase=. 1
  NB. digits=. (1$0)
  NB. outputBase=. 10
  NB. expected=. (0$0)    NB. error=. 'input base must be >= 2'
  assert (0$0) -: rebase 1; (1$0); 10
)

all_your_base_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_14  =: monad define
  Description@.1 ('input base is zero')
  Order@.1 (14)

  NB. inputBase=. 0
  NB. digits=. ''
  NB. outputBase=. 10
  NB. expected=.  (0$0)   NB. error=. 'input base must be >= 2'
  assert (0$0) -: rebase 0; '';10
)

all_your_base_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_15  =: monad define
  Description@.1 ('input base is negative')
  Order@.1 (15)

  NB. inputBase=. _2
  NB. digits=. (1$1)
  NB. outputBase=. 10
  NB. expected=.  (0$0)   NB. error=. 'input base must be >= 2'
  assert (0$0) -: rebase _2; (1$1); 10
)

all_your_base_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_16  =: monad define
  Description@.1 ('negative digit')
  Order@.1 (16)

  NB. inputBase=. 2
  NB. digits=. 1 _1 1 0 1 0
  NB. outputBase=. 10
  NB. expected=.  (0$0)   NB. error=. 'all digits must satisfy 0 <= d < input base'
  assert (0$0) -: rebase 2; 1 _1 1 0 1 0; 10
)

all_your_base_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_17  =: monad define
  Description@.1 ('invalid positive digit')
  Order@.1 (17)

  NB. inputBase=. 2
  NB. digits=. 1 2 1 0 1 0
  NB. outputBase=. 10
  NB. expected=.  (0$0)   NB. error=. 'all digits must satisfy 0 <= d < input base'
  assert (0$0) -: rebase 2; 1 2 1 0 1 0; 10
)

all_your_base_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_18  =: monad define
  Description@.1 ('output base is one')
  Order@.1 (18)

  NB. inputBase=. 2
  NB. digits=. 1 0 1 0 1 0
  NB. outputBase=. 1
  NB. expected=.  (0$0)   NB. error=. 'output base must be >= 2'
  assert (0$0) -: rebase 2; 1 0 1 0 1 0; 1
)

all_your_base_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_19  =: monad define
  Description@.1 ('output base is zero')
  Order@.1 (19)

  NB. inputBase=. 10
  NB. digits=. (1$7)
  NB. outputBase=. 0
  NB. expected=.  (0$0)   NB. error=. 'output base must be >= 2'
  assert (0$0) -: rebase 10; (1$7); 0
)

all_your_base_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_20  =: monad define
  Description@.1 ('output base is negative')
  Order@.1 (20)

  NB. inputBase=. 2
  NB. digits=. (1$1)
  NB. outputBase=. _7
  NB. expected=.  (0$0)   NB. error=. 'output base must be >= 2'
  assert (0$0) -: rebase 2; (1$1); _7
)

all_your_base_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_21  =: monad define
  Description@.1 ('both bases are negative')
  Order@.1 (21)

  NB. inputBase=. _2
  NB. digits=. (1$1)
  NB. outputBase=. _7
  NB. expected=.  (0$0)   NB. error=. 'input base must be >= 2'
  assert (0$0) -: rebase _2; (1$1); _7
)
