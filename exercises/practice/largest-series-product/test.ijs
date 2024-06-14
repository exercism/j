load 'largest-series-product.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


largest_series_product_test_01_ignore=: 0
test_largest_series_product_test_01  =: monad define
  Description@.1 ('finds the largest product if span equals length')
  Order@.1 (1)

  NB. digits=. '29'
  NB. span=. 2
  NB. expected=. 18
  assert 18 -: 2 largest_product '29'
)

largest_series_product_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_02  =: monad define
  Description@.1 ('can find the largest product of 2 with numbers in order')
  Order@.1 (2)

  NB. digits=. '0123456789'
  NB. span=. 2
  NB. expected=. 72
  assert 72 -: 2 largest_product '0123456789'
)

largest_series_product_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_03  =: monad define
  Description@.1 ('can find the largest product of 2')
  Order@.1 (3)

  NB. digits=. '576802143'
  NB. span=. 2
  NB. expected=. 48
  assert 48 -: 2 largest_product '576802143'
)

largest_series_product_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_04  =: monad define
  Description@.1 ('can find the largest product of 3 with numbers in order')
  Order@.1 (4)

  NB. digits=. '0123456789'
  NB. span=. 3
  NB. expected=. 504
  assert 504 -: 3 largest_product '0123456789'
)

largest_series_product_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_05  =: monad define
  Description@.1 ('can find the largest product of 3')
  Order@.1 (5)

  NB. digits=. '1027839564'
  NB. span=. 3
  NB. expected=. 270
  assert 270 -: 3 largest_product '1027839564'
)

largest_series_product_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_06  =: monad define
  Description@.1 ('can find the largest product of 5 with numbers in order')
  Order@.1 (6)

  NB. digits=. '0123456789'
  NB. span=. 5
  NB. expected=. 15120
  assert 15120 -: 5 largest_product '0123456789'
)

largest_series_product_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_07  =: monad define
  Description@.1 ('can get the largest product of a big number')
  Order@.1 (7)

  NB. digits=. '73167176531330624919225119674426574742355349194934'
  NB. span=. 6
  NB. expected=. 23520
  assert 23520 -: 6 largest_product '73167176531330624919225119674426574742355349194934'
)

largest_series_product_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_08  =: monad define
  Description@.1 ('reports zero if the only digits are zero')
  Order@.1 (8)

  NB. digits=. '0000'
  NB. span=. 2
  NB. expected=. 0
  assert 0 -: 2 largest_product '0000'
)

largest_series_product_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_09  =: monad define
  Description@.1 ('reports zero if all spans include zero')
  Order@.1 (9)

  NB. digits=. '99099'
  NB. span=. 3
  NB. expected=. 0
  assert 0 -: 3 largest_product '99099'
)

largest_series_product_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_11  =: monad define
  Description@.1 ('reports 1 for empty string and empty product (0 span)')
  Order@.1 (11)

  NB. digits=. ''
  NB. span=. 0
  NB. expected=. 1
  assert 1 -: 0 largest_product ''
)

largest_series_product_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_largest_series_product_test_12  =: monad define
  Description@.1 ('reports 1 for nonempty string and empty product (0 span)')
  Order@.1 (12)

  NB. digits=. '123'
  NB. span=. 0
  NB. expected=. 1
  assert 1 -: 0 largest_product '123'
)
