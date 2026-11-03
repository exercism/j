load 'all-your-base.ijs'


all_your_base_test_01_ignore=: 0
test_all_your_base_test_01  =: monad define
  Description=: 'single bit one to decimal'


  NB. input_base  =. 2
  NB. digits      =. 1$1
  NB. output_base =. 10
  NB. expected    =. 1$1

  assert (1$1) -: rebase 2;(1$1);10
)

all_your_base_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_02  =: monad define
  Description=: 'binary to single decimal'


  NB. input_base  =. 2
  NB. digits      =. 1 0 1
  NB. output_base =. 10
  NB. expected    =. 1$5
  assert (1$5) -: rebase 2;1 0 1;10
)

all_your_base_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_03  =: monad define
  Description=: 'single decimal to binary'


  NB. input_base  =. 10
  NB. digits      =. 1$5
  NB. output_base =. 2
  NB. expected    =. 1 0 1
  assert 1 0 1 -: rebase 10;(1$5);2
)

all_your_base_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_04  =: monad define
  Description=: 'binary to multiple decimal'


  NB. input_base  =. 2
  NB. digits      =. 1 0 1 0 1 0
  NB. output_base =. 10
  NB. expected    =. 4 2
  assert 4 2 -: rebase 2;1 0 1 0 1 0;10
)

all_your_base_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_05  =: monad define
  Description=: 'decimal to binary'


  NB. input_base  =. 10
  NB. digits      =. 4 2
  NB. output_base =. 2
  NB. expected    =. 1 0 1 0 1 0
  assert 1 0 1 0 1 0 -: rebase 10;4 2;2
)

all_your_base_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_06  =: monad define
  Description=: 'trinary to hexadecimal'


  NB. input_base  =. 3
  NB. digits      =. 1 1 2 0
  NB. output_base =. 16
  NB. expected    =. 2 10
  assert 2 10 -: rebase 3;1 1 2 0;16
)

all_your_base_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_07  =: monad define
  Description=: 'hexadecimal to trinary'


  NB. input_base  =. 16
  NB. digits      =. 2 10
  NB. output_base =. 3
  NB. expected    =. 1 1 2 0
  assert 1 1 2 0 -: rebase 16;2 10;3
)

all_your_base_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_08  =: monad define
  Description=: '15-bit integer'


  NB. input_base  =. 97
  NB. digits      =. 3 46 60
  NB. output_base =. 73
  NB. expected    =. 6 10 45
  assert 6 10 45 -: rebase 97;3 46 60;73
)

all_your_base_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_09  =: monad define
  Description=: 'empty list'


  NB. input_base  =. 2
  NB. digits      =. ''
  NB. output_base =. 10
  NB. expected    =. 1$0
  assert (1$0) -: rebase 2;'';10
)

all_your_base_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_10  =: monad define
  Description=: 'single zero'


  NB. input_base  =. 10
  NB. digits      =. 1$0
  NB. output_base =. 2
  NB. expected    =. 1$0
  assert (1$0) -: rebase 10;(1$0);2
)

all_your_base_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_11  =: monad define
  Description=: 'multiple zeros'


  NB. input_base  =. 10
  NB. digits      =. 0 0 0
  NB. output_base =. 2
  NB. expected    =. 1$0
  assert (1$0) -: rebase 10;0 0 0;2
)

all_your_base_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_12  =: monad define
  Description=: 'leading zeros'


  NB. input_base  =. 7
  NB. digits      =. 0 6 0
  NB. output_base =. 10
  NB. expected    =. 4 2
  assert 4 2 -: rebase 7;0 6 0;10
)


NB. Error cases
NB. =============================================================================

all_your_base_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_13  =: monad define
  Description=: 'input base is one'


  NB. input_base  =. 1
  NB. digits      =. 1$0
  NB. output_base =. 10
  NB. expected    =. ''    NB. error=. 'input base must be >= 2'
  assert '' -: rebase 1;(1$0);10
)

all_your_base_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_14  =: monad define
  Description=: 'input base is zero'


  NB. input_base  =. 0
  NB. digits      =. ''
  NB. output_base =. 10
  NB. expected    =.  ''   NB. error=. 'input base must be >= 2'
  assert '' -: rebase 0;'';10
)

all_your_base_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_15  =: monad define
  Description=: 'input base is negative'


  NB. input_base  =. _2
  NB. digits      =. 1$1
  NB. output_base =. 10
  NB. expected    =.  ''   NB. error=. 'input base must be >= 2'
  assert '' -: rebase _2;(1$1);10
)

all_your_base_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_16  =: monad define
  Description=: 'negative digit'


  NB. input_base  =. 2
  NB. digits      =. 1 _1 1 0 1 0
  NB. output_base =. 10
  NB. expected    =.  ''   NB. error=. 'all digits must satisfy 0 <= d < input base'
  assert '' -: rebase 2;1 _1 1 0 1 0;10
)

all_your_base_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_17  =: monad define
  Description=: 'invalid positive digit'


  NB. input_base  =. 2
  NB. digits      =. 1 2 1 0 1 0
  NB. output_base =. 10
  NB. expected    =.  ''   NB. error=. 'all digits must satisfy 0 <= d < input base'
  assert '' -: rebase 2;1 2 1 0 1 0;10
)

all_your_base_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_18  =: monad define
  Description=: 'output base is one'


  NB. input_base  =. 2
  NB. digits      =. 1 0 1 0 1 0
  NB. output_base =. 1
  NB. expected    =.  ''   NB. error=. 'output base must be >= 2'
  assert '' -: rebase 2;1 0 1 0 1 0;1
)

all_your_base_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_19  =: monad define
  Description=: 'output base is zero'


  NB. input_base  =. 10
  NB. digits      =. 1$7
  NB. output_base =. 0
  NB. expected    =.  ''   NB. error=. 'output base must be >= 2'
  assert '' -: rebase 10;(1$7);0
)

all_your_base_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_20  =: monad define
  Description=: 'output base is negative'


  NB. input_base  =. 2
  NB. digits      =. 1$1
  NB. output_base =. _7
  NB. expected    =.  ''   NB. error=. 'output base must be >= 2'
  assert '' -: rebase 2;(1$1);_7
)

all_your_base_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_all_your_base_test_21  =: monad define
  Description=: 'both bases are negative'


  NB. input_base  =. _2
  NB. digits      =. 1$1
  NB. output_base =. _7
  NB. expected    =.  ''   NB. error=. 'input base must be >= 2'
  assert '' -: rebase _2;(1$1);_7
)
