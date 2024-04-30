load 'kindergarten-garden.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


kindergarten_garden_test_01_ignore=: 0
test_kindergarten_garden_test_01  =: monad define
  Description@.1 ('garden with single student')
  Order@.1 (1)

  NB. diagram  =. 2 2$'RCGG'
  NB. student  =. 'Alice'
  NB. expected =. 'radishes';'clover';'grass';'grass'
  assert ('radishes';'clover';'grass';'grass') -: (2 2$'RCGG') plants 'Alice' 
)

kindergarten_garden_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_02  =: monad define
  Description@.1 ('different garden with single student')
  Order@.1 (2)

  NB. diagram  =. 2 2$'VCRC'
  NB. student  =. 'Alice'
  NB. expected =. 'violets';'clover';'radishes';'clover'
  assert ('violets';'clover';'radishes';'clover') -: (2 2$'VCRC') plants 'Alice'
)

kindergarten_garden_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_03  =: monad define
  Description@.1 ('garden with two students')
  Order@.1 (3)

  NB. diagram  =. 2 4$'VVCGVVRC'
  NB. student  =. 'Bob'
  NB. expected =. 'clover';'grass';'radishes';'clover'
  assert ('clover';'grass';'radishes';'clover') -: (2 4$'VVCGVVRC') plants 'Bob'
)

kindergarten_garden_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_04  =: monad define
  Description@.1 ('second student''s garden')
  Order@.1 (4)

  NB. diagram  =. 2 6$'VVCCGGVVCCGG'
  NB. student  =. 'Bob'
  NB. expected =. 'clover';'clover';'clover';'clover'
  assert ('clover';'clover';'clover';'clover') -: (2 6$'VVCCGGVVCCGG') plants 'Bob'
)

kindergarten_garden_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_05  =: monad define
  Description@.1 ('third student''s garden')
  Order@.1 (5)

  NB. diagram  =. 2 6$'VVCCGGVVCCGG'
  NB. student  =. 'Charlie'
  NB. expected =. 'grass';'grass';'grass';'grass'
  assert ('grass';'grass';'grass';'grass') -: (2 6$'VVCCGGVVCCGG') plants 'Charlie'
)

kindergarten_garden_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_06  =: monad define
  Description@.1 ('for Alice, first student''s garden')
  Order@.1 (6)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Alice'
  NB. expected =. 'violets';'radishes';'violets';'radishes'
  assert ('violets';'radishes';'violets';'radishes') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Alice'
)

kindergarten_garden_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_07  =: monad define
  Description@.1 ('for Bob, second student''s garden')
  Order@.1 (7)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Bob'
  NB. expected =. 'clover';'grass';'clover';'clover'
  assert ('clover';'grass';'clover';'clover') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Bob'
)

kindergarten_garden_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_08  =: monad define
  Description@.1 ('for Charlie')
  Order@.1 (8)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Charlie'
  NB. expected =. 'violets';'violets';'clover';'grass'
  assert ('violets';'violets';'clover';'grass') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Charlie'
)

kindergarten_garden_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_09  =: monad define
  Description@.1 ('for David')
  Order@.1 (9)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'David'
  NB. expected =. 'radishes';'violets';'clover';'radishes'
  assert ('radishes';'violets';'clover';'radishes') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'David'
)

kindergarten_garden_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_10  =: monad define
  Description@.1 ('for Eve')
  Order@.1 (10)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Eve'
  NB. expected =. 'clover';'grass';'radishes';'grass'
  assert ('clover';'grass';'radishes';'grass') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Eve'
)

kindergarten_garden_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_11  =: monad define
  Description@.1 ('for Fred')
  Order@.1 (11)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Fred'
  NB. expected =. 'grass';'clover';'violets';'clover'
  assert ('grass';'clover';'violets';'clover') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Fred'
)

kindergarten_garden_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_12  =: monad define
  Description@.1 ('for Ginny')
  Order@.1 (12)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Ginny'
  NB. expected =. 'clover';'grass';'grass';'clover'
  assert ('clover';'grass';'grass';'clover') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Ginny'
)

kindergarten_garden_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_13  =: monad define
  Description@.1 ('for Harriet')
  Order@.1 (13)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Harriet'
  NB. expected =. 'violets';'radishes';'radishes';'violets'
  assert ('violets';'radishes';'radishes';'violets') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Harriet'
)

kindergarten_garden_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_14  =: monad define
  Description@.1 ('for Ileana')
  Order@.1 (14)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Ileana'
  NB. expected =. 'grass';'clover';'violets';'clover'
  assert ('grass';'clover';'violets';'clover') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Ileana'
)

kindergarten_garden_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_15  =: monad define
  Description@.1 ('for Joseph')
  Order@.1 (15)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Joseph'
  NB. expected =. 'violets';'clover';'violets';'grass'
  assert ('violets';'clover';'violets';'grass') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Joseph'
)

kindergarten_garden_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_16  =: monad define
  Description@.1 ('for Kincaid, second to last student''s garden')
  Order@.1 (16)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Kincaid'
  NB. expected =. 'grass';'clover';'clover';'grass'
  assert ('grass';'clover';'clover';'grass') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Kincaid'
)

kindergarten_garden_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_kindergarten_garden_test_17  =: monad define
  Description@.1 ('for Larry, last student''s garden')
  Order@.1 (17)

  NB. diagram  =. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  NB. student  =. 'Larry'
  NB. expected =. 'grass';'violets';'clover';'violets'
  assert ('grass';'violets';'clover';'violets') -: (2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV') plants 'Larry'
)

