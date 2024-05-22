load 'knapsack.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


knapsack_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_knapsack_test_02  =: monad define
  Description@.1 ('no items')
  Order@.1 (2)

  NB. maximumWeight =. 100
  NB. items         =. ''
  NB. expected      =. 0
  assert 0 -: 100 maximumValue ''
)

knapsack_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_knapsack_test_03  =: monad define
  Description@.1 ('one item, too heavy')
  Order@.1 (3)

  NB. maximumWeight =. 10
  NB. items         =. 100 1
  NB. expected      =. 0
  assert 0 -: 10 maximumValue 100 1
)

knapsack_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_knapsack_test_04  =: monad define
  Description@.1 ('five items (cannot be greedy by weight)')
  Order@.1 (4)

  NB. maximumWeight =. 10
  NB. items         =. 2 5,2 5,2 5,2 5,:10 21
  NB. expected      =. 21
  assert 21 -: 10 maximumValue 2 5,2 5,2 5,2 5,:10 21
)

knapsack_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_knapsack_test_05  =: monad define
  Description@.1 ('five items (cannot be greedy by value)')
  Order@.1 (5)

  NB. maximumWeight =. 10
  NB. items         =. 2 20,2 20,2 20,2 20,:10 50
  NB. expected      =. 80
  assert 80 -: 10 maximumValue 2 20,2 20,2 20,2 20,:10 50
)

knapsack_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_knapsack_test_06  =: monad define
  Description@.1 ('example knapsack')
  Order@.1 (6)

  NB. maximumWeight =. 10
  NB. items         =. 5 10,4 40,6 30,:4 50
  NB. expected      =. 90
  assert 90 -: 10 maximumValue 5 10,4 40,6 30,:4 50
)

knapsack_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_knapsack_test_07  =: monad define
  Description@.1 ('8 items')
  Order@.1 (7)

  NB. maximumWeight =. 104
  NB. items         =. 25 350,35 400,45 450,5 20,25 70,3 8,2 5,:2 5
  NB. expected      =. 900
  assert 900 -: 104 maximumValue 25 350,35 400,45 450,5 20,25 70,3 8,2 5,:2 5
)

knapsack_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_knapsack_test_08  =: monad define
  Description@.1 ('15 items')
  Order@.1 (8)

  NB. maximumWeight =. 750
  NB. items         =. 70 135,73 139,77 149,80 150,82 156,87 163,90 173,94 184,98 192,106 201,110 210,113 214,115 221,118 229,:120 240
  NB. expected      =. 1458
  assert 1458 -: 750 maximumValue 70 135,73 139,77 149,80 150,82 156,87 163,90 173,94 184,98 192,106 201,110 210,113 214,115 221,118 229,:120 240
)

