load 'minesweeper.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


minesweeper_test_01_ignore=: 0
test_minesweeper_test_01  =: monad define
  Description@.1 ('no rows')
  Order@.1 (1)

  NB. minefield=. ,:''
  NB. expected =. ,:''
  assert (,:'') -: annotate ,:''
)

minesweeper_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_02  =: monad define
  Description@.1 ('no columns')
  Order@.1 (2)

  NB. minefield=. ,:a:
  NB. expected =. ,:a:
  assert (,:,:' ') -: annotate ,:,:' '
)

minesweeper_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_03  =: monad define
  Description@.1 ('no mines')
  Order@.1 (3)

  NB. minefield=. '   ','   ',:'   '
  NB. expected =. '   ','   ',:'   '
  assert ('   ','   ',:'   ') -: annotate '   ','   ',:'   '
)

minesweeper_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_04  =: monad define
  Description@.1 ('minefield with only mines')
  Order@.1 (4)

  NB. minefield=. '***','***',:'***'
  NB. expected =. '***','***',:'***'
  assert ('***','***',:'***') -: annotate '***','***',:'***'
)

minesweeper_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_05  =: monad define
  Description@.1 ('mine surrounded by spaces')
  Order@.1 (5)

  NB. minefield=. '   ',' * ',:'   '
  NB. expected =. '111','1*1',:'111'
  assert ('111','1*1',:'111') -: annotate '   ',' * ',:'   '
)

minesweeper_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_06  =: monad define
  Description@.1 ('space surrounded by mines')
  Order@.1 (6)

  NB. minefield=. '***','* *',:'***'
  NB. expected =. '***','*8*',:'***'
  assert ('***','*8*',:'***') -: annotate '***','* *',:'***'
)

minesweeper_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_07  =: monad define
  Description@.1 ('horizontal line')
  Order@.1 (7)

  NB. minefield=. ,:' * * '
  NB. expected =. ,:'1*2*1'
  assert (,:'1*2*1') -: annotate ,:' * * '
)

minesweeper_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_08  =: monad define
  Description@.1 ('horizontal line, mines at edges')
  Order@.1 (8)

  NB. minefield=. '*   *'
  NB. expected =. '*1 1*'
  assert (,:'*1 1*') -: annotate ,:'*   *'
)

minesweeper_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_09  =: monad define
  Description@.1 ('vertical line')
  Order@.1 (9)

  NB. minefield=. ' ','*',' ','*',:' '
  NB. expected =. '1','*','2','*',:'1'
  assert ('1','*','2','*',:'1') -: annotate ' ','*',' ','*',:' '
)

minesweeper_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_10  =: monad define
  Description@.1 ('vertical line, mines at edges')
  Order@.1 (10)

  NB. minefield=. '*',' ',' ',' ',:'*'
  NB. expected =. '*','1',' ','1',:'*'
  assert ('*','1',' ','1',:'*') -: annotate '*',' ',' ',' ',:'*'
)

minesweeper_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_11  =: monad define
  Description@.1 ('cross')
  Order@.1 (11)

  NB. minefield=. '  *  ','  *  ','*****','  *  ',:'  *  '
  NB. expected =. ' 2*2 ','25*52','*****','25*52',:' 2*2 '
  assert (' 2*2 ','25*52','*****','25*52',:' 2*2 ') -: annotate '  *  ','  *  ','*****','  *  ',:'  *  '
)

minesweeper_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_12  =: monad define
  Description@.1 ('large minefield')
  Order@.1 (12)

  NB. minefield=. ' *  * ','  *   ','    * ','   * *',' *  * ',:'      '
  NB. expected =. '1*22*1','12*322',' 123*2','112*4*','1*22*2',:'111111'
  assert ('1*22*1','12*322',' 123*2','112*4*','1*22*2',:'111111') -: annotate ' *  * ','  *   ','    * ','   * *',' *  * ',:'      '
)

