load 'variable-length-quantity.ijs'


before_all=: monad define
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 ''
)


variable_length_quantity_test_01_ignore=: 0
test_variable_length_quantity_test_01  =: monad define
  Description@.1 ('zero')
  Order@.1 (1)

  NB. integers=. 16b0
  NB. expected=. 16b0
  assert 16b0 = encode 16b0
)

variable_length_quantity_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_02  =: monad define
  Description@.1 ('arbitrary single byte')
  Order@.1 (2)

  NB. integers=. 16b40
  NB. expected=. 16b40
  assert 16b40 = encode 16b40
)

variable_length_quantity_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_03  =: monad define
  Description@.1 ('largest single byte')
  Order@.1 (3)

  NB. integers=. 16b7f
  NB. expected=. 16b7f
  assert 16b7f = encode 16b7f
)

variable_length_quantity_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_04  =: monad define
  Description@.1 ('smallest double byte')
  Order@.1 (4)

  NB. integers=. 16b80
  NB. expected=. 16b81 16b0
  assert 16b81 16b0 -: encode 16b80
)

variable_length_quantity_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_05  =: monad define
  Description@.1 ('arbitrary double byte')
  Order@.1 (5)

  NB. integers=. 16b2000
  NB. expected=. 16bc0 16b0
  assert 16bc0 16b0 -: encode 16b2000
)

variable_length_quantity_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_06  =: monad define
  Description@.1 ('largest double byte')
  Order@.1 (6)

  NB. integers=. 16b3fff
  NB. expected=. 16bff 16b7f
  assert 16bff 16b7f -: encode 16b3fff
)

variable_length_quantity_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_07  =: monad define
  Description@.1 ('smallest triple byte')
  Order@.1 (7)

  NB. integers=. 16b4000
  NB. expected=. 16b81 16b80 16b0
  assert 16b81 16b80 16b0 -: encode 16b4000
)

variable_length_quantity_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_08  =: monad define
  Description@.1 ('arbitrary triple byte')
  Order@.1 (8)

  NB. integers=. 16b100000
  NB. expected=. 16bc0 16b80 16b0
  assert 16bc0 16b80 16b0 -: encode 16b100000
)

variable_length_quantity_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_09  =: monad define
  Description@.1 ('largest triple byte')
  Order@.1 (9)

  NB. integers=. 16b1fffff
  NB. expected=. 16bff 16bff 16b7f
  assert 16bff 16bff 16b7f -: encode 16b1fffff
)

variable_length_quantity_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_10  =: monad define
  Description@.1 ('smallest quadruple byte')
  Order@.1 (10)

  NB. integers=. 16b200000
  NB. expected=. 16b81 16b80 16b80 16b0
  assert 16b81 16b80 16b80 16b0 -: encode 16b200000
)

variable_length_quantity_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_11  =: monad define
  Description@.1 ('arbitrary quadruple byte')
  Order@.1 (11)

  NB. integers=. 16b8000000
  NB. expected=. 16bc0 16b80 16b80 16b0
  assert 16bc0 16b80 16b80 16b0 -: encode 16b8000000
)

variable_length_quantity_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_12  =: monad define
  Description@.1 ('largest quadruple byte')
  Order@.1 (12)

  NB. integers=. 16bfffffff
  NB. expected=. 16bff 16bff 16bff 16b7f
  assert 16bff 16bff 16bff 16b7f -: encode 16bfffffff
)

variable_length_quantity_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_13  =: monad define
  Description@.1 ('smallest quintuple byte')
  Order@.1 (13)

  NB. integers=. 16b10000000
  NB. expected=. 16b81 16b80 16b80 16b80 16b0
  assert 16b81 16b80 16b80 16b80 16b0 -: encode 16b10000000
)

variable_length_quantity_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_14  =: monad define
  Description@.1 ('arbitrary quintuple byte')
  Order@.1 (14)

  NB. integers=. 16bff000000
  NB. expected=. 16b8f 16bf8 16b80 16b80 16b0
  assert 16b8f 16bf8 16b80 16b80 16b0 -: encode 16bff000000
)

variable_length_quantity_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_15  =: monad define
  Description@.1 ('maximum 32-bit integer input')
  Order@.1 (15)

  NB. integers=. 16bffffffff
  NB. expected=. 16b8f 16bff 16bff 16bff 16b7f
  assert 16b8f 16bff 16bff 16bff 16b7f -: encode 16bffffffff
)

variable_length_quantity_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_16  =: monad define
  Description@.1 ('two single-byte values')
  Order@.1 (16)

  NB. integers=. 16b40 16b7f
  NB. expected=. 16b40 16b7f
  assert 16b40 16b7f -: encode 16b40 16b7f
)

variable_length_quantity_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_17  =: monad define
  Description@.1 ('two multi-byte values')
  Order@.1 (17)

  NB. integers=. 16b4000 16b123456
  NB. expected=. 16b81 16b80 16b0 16bc8 16be8 16b56
  assert 16b81 16b80 16b0 16bc8 16be8 16b56 -: encode 16b4000 16b123456
)

variable_length_quantity_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_18  =: monad define
  Description@.1 ('many multi-byte values')
  Order@.1 (18)

  NB. integers=. 16b2000 16b123456 16bfffffff 16b0 16b3fff 16b4000
  NB. expected=. 16bc0 16b0 16bc8 16be8 16b56 16bff 16bff 16bff 16b7f 16b0 16bff 16b7f 16b81 16b80 16b0
  assert 16bc0 16b0 16bc8 16be8 16b56 16bff 16bff 16bff 16b7f 16b0 16bff 16b7f 16b81 16b80 16b0 -: encode 16b2000 16b123456 16bfffffff 16b0 16b3fff 16b4000
)

variable_length_quantity_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_19  =: monad define
  Description@.1 ('one byte')
  Order@.1 (19)

  NB. integers=. 16b7f
  NB. expected=. 16b7f
  assert 16b7f = decode 16b7f
)

variable_length_quantity_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_20  =: monad define
  Description@.1 ('two bytes')
  Order@.1 (20)

  NB. integers=. 16bc0 16b0
  NB. expected=. 16b2000
  assert 16b2000 = decode 16bc0 16b0
)

variable_length_quantity_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_21  =: monad define
  Description@.1 ('three bytes')
  Order@.1 (21)

  NB. integers=. 16bff 16bff 16b7f
  NB. expected=. 16b1fffff
  assert 16b1fffff = decode 16bff 16bff 16b7f
)

variable_length_quantity_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_22  =: monad define
  Description@.1 ('four bytes')
  Order@.1 (22)

  NB. integers=. 16b81 16b80 16b80 16b0
  NB. expected=. 16b200000
  assert 16b200000 = decode 16b81 16b80 16b80 16b0
)

variable_length_quantity_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_23  =: monad define
  Description@.1 ('maximum 32-bit integer')
  Order@.1 (23)

  NB. integers=. 16b8f 16bff 16bff 16bff 16b7f
  NB. expected=. 16bffffffff
  assert 16bffffffff = decode 16b8f 16bff 16bff 16bff 16b7f
)

variable_length_quantity_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_variable_length_quantity_test_24  =: monad define
  Description@.1 ('multiple values')
  Order@.1 (24)

  NB. integers=. 16bc0 16b0 16bc8 16be8 16b56 16bff 16bff 16bff 16b7f 16b0 16bff 16b7f 16b81 16b80 16b0
  NB. expected=. 16b2000 16b123456 16bfffffff 16b0 16b3fff 16b4000
  assert 16b2000 16b123456 16bfffffff 16b0 16b3fff 16b4000 -: decode 16bc0 16b0 16bc8 16be8 16b56 16bff 16bff 16bff 16b7f 16b0 16bff 16b7f 16b81 16b80 16b0
)
