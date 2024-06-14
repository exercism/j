load 'eliuds-eggs.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


eliuds_eggs_test_01_ignore=: 0
test_eliuds_eggs_test_01  =: monad define
  Description@.1 ('0 eggs')
  Order@.1 (1)

  NB. number=. 0
  NB. expected=. 0
  assert 0 -: eggcount 0
)

eliuds_eggs_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_eliuds_eggs_test_02  =: monad define
  Description@.1 ('1 egg')
  Order@.1 (2)

  NB. number=. 16
  NB. expected=. 1
  assert 1 -: eggcount 16
)

eliuds_eggs_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_eliuds_eggs_test_03  =: monad define
  Description@.1 ('4 eggs')
  Order@.1 (3)

  NB. number=. 89
  NB. expected=. 4
  assert 4 -: eggcount 89
)

eliuds_eggs_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_eliuds_eggs_test_04  =: monad define
  Description@.1 ('13 eggs')
  Order@.1 (4)

  NB. number=. 2000000000
  NB. expected=. 13
  assert 13 -: eggcount 2000000000
)

