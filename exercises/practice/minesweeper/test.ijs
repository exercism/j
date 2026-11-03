load 'minesweeper.ijs'


minesweeper_test_01_ignore=: 0
test_minesweeper_test_01  =: monad define
  Description=: 'no rows'

  NB. minefield=. ,:''
  NB. expected =. ,:''
  assert (,:'') -: annotate ,:''
)

minesweeper_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_02  =: monad define
  Description=: 'no columns'

  NB. minefield=. ,:a:
  NB. expected =. ,:a:
  assert (,:,:' ') -: annotate ,:,:' '
)

minesweeper_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_03  =: monad define
  Description=: 'no mines'

  NB. minefield=. '   ','   ',:'   '
  NB. expected =. '   ','   ',:'   '
  assert ('   ','   ',:'   ') -: annotate '   ','   ',:'   '
)

minesweeper_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_04  =: monad define
  Description=: 'minefield with only mines'

  NB. minefield=. '***','***',:'***'
  NB. expected =. '***','***',:'***'
  assert ('***','***',:'***') -: annotate '***','***',:'***'
)

minesweeper_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_05  =: monad define
  Description=: 'mine surrounded by spaces'

  NB. minefield=. '   ',' * ',:'   '
  NB. expected =. '111','1*1',:'111'
  assert ('111','1*1',:'111') -: annotate '   ',' * ',:'   '
)

minesweeper_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_06  =: monad define
  Description=: 'space surrounded by mines'

  NB. minefield=. '***','* *',:'***'
  NB. expected =. '***','*8*',:'***'
  assert ('***','*8*',:'***') -: annotate '***','* *',:'***'
)

minesweeper_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_07  =: monad define
  Description=: 'horizontal line'

  NB. minefield=. ,:' * * '
  NB. expected =. ,:'1*2*1'
  assert (,:'1*2*1') -: annotate ,:' * * '
)

minesweeper_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_08  =: monad define
  Description=: 'horizontal line, mines at edges'

  NB. minefield=. '*   *'
  NB. expected =. '*1 1*'
  assert (,:'*1 1*') -: annotate ,:'*   *'
)

minesweeper_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_09  =: monad define
  Description=: 'vertical line'

  NB. minefield=. ' ','*',' ','*',:' '
  NB. expected =. '1','*','2','*',:'1'
  assert ('1','*','2','*',:'1') -: annotate ' ','*',' ','*',:' '
)

minesweeper_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_10  =: monad define
  Description=: 'vertical line, mines at edges'

  NB. minefield=. '*',' ',' ',' ',:'*'
  NB. expected =. '*','1',' ','1',:'*'
  assert ('*','1',' ','1',:'*') -: annotate '*',' ',' ',' ',:'*'
)

minesweeper_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_11  =: monad define
  Description=: 'cross'

  NB. minefield=. '  *  ','  *  ','*****','  *  ',:'  *  '
  NB. expected =. ' 2*2 ','25*52','*****','25*52',:' 2*2 '
  assert (' 2*2 ','25*52','*****','25*52',:' 2*2 ') -: annotate '  *  ','  *  ','*****','  *  ',:'  *  '
)

minesweeper_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_minesweeper_test_12  =: monad define
  Description=: 'large minefield'

  NB. minefield=. ' *  * ','  *   ','    * ','   * *',' *  * ',:'      '
  NB. expected =. '1*22*1','12*322',' 123*2','112*4*','1*22*2',:'111111'
  assert ('1*22*1','12*322',' 123*2','112*4*','1*22*2',:'111111') -: annotate ' *  * ','  *   ','    * ','   * *',' *  * ',:'      '
)

