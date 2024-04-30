load 'roman-numerals.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


roman_numerals_test_01_ignore=: 0
test_roman_numerals_test_01  =: monad define
  Description@.1 ('1 is I')
  Order@.1 (1)

  NB. number   =. 1
  NB. expected =. 1$'I'
  assert (1$'I') -: roman 1
)

roman_numerals_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_02  =: monad define
  Description@.1 ('2 is II')
  Order@.1 (2)

  NB. number   =. 2
  NB. expected =. 'II'
  assert 'II' -: roman 2
)

roman_numerals_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_03  =: monad define
  Description@.1 ('3 is III')
  Order@.1 (3)

  NB. number   =. 3
  NB. expected =. 'III'
  assert 'III' -: roman 3
)

roman_numerals_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_04  =: monad define
  Description@.1 ('4 is IV')
  Order@.1 (4)

  NB. number   =. 4
  NB. expected =. 'IV'
  assert 'IV' -: roman 4
)

roman_numerals_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_05  =: monad define
  Description@.1 ('5 is V')
  Order@.1 (5)

  NB. number   =. 5
  NB. expected =. 1$'V'
  assert (1$'V') -: roman 5
)

roman_numerals_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_06  =: monad define
  Description@.1 ('6 is VI')
  Order@.1 (6)

  NB. number   =. 6
  NB. expected =. 'VI'
  assert 'VI' -: roman 6
)

roman_numerals_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_07  =: monad define
  Description@.1 ('9 is IX')
  Order@.1 (7)

  NB. number   =. 9
  NB. expected =. 'IX'
  assert 'IX' -: roman 9
)

roman_numerals_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_08  =: monad define
  Description@.1 ('16 is XVI')
  Order@.1 (8)

  NB. number   =. 16
  NB. expected =. 'XVI'
  assert 'XVI' -: roman 16
)

roman_numerals_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_09  =: monad define
  Description@.1 ('27 is XXVII')
  Order@.1 (9)

  NB. number   =. 27
  NB. expected =. 'XXVII'
  assert 'XXVII' -: roman 27
)

roman_numerals_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_10  =: monad define
  Description@.1 ('48 is XLVIII')
  Order@.1 (10)

  NB. number   =. 48
  NB. expected =. 'XLVIII'
  assert 'XLVIII' -: roman 48
)

roman_numerals_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_11  =: monad define
  Description@.1 ('49 is XLIX')
  Order@.1 (11)

  NB. number   =. 49
  NB. expected =. 'XLIX'
  assert 'XLIX' -: roman 49
)

roman_numerals_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_12  =: monad define
  Description@.1 ('59 is LIX')
  Order@.1 (12)

  NB. number   =. 59
  NB. expected =. 'LIX'
  assert 'LIX' -: roman 59
)

roman_numerals_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_13  =: monad define
  Description@.1 ('66 is LXVI')
  Order@.1 (13)

  NB. number   =. 66
  NB. expected =. 'LXVI'
  assert 'LXVI' -: roman 66
)

roman_numerals_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_14  =: monad define
  Description@.1 ('93 is XCIII')
  Order@.1 (14)

  NB. number   =. 93
  NB. expected =. 'XCIII'
  assert 'XCIII' -: roman 93
)

roman_numerals_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_15  =: monad define
  Description@.1 ('141 is CXLI')
  Order@.1 (15)

  NB. number   =. 141
  NB. expected =. 'CXLI'
  assert 'CXLI' -: roman 141
)

roman_numerals_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_16  =: monad define
  Description@.1 ('163 is CLXIII')
  Order@.1 (16)

  NB. number   =. 163
  NB. expected =. 'CLXIII'
  assert 'CLXIII' -: roman 163
)

roman_numerals_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_17  =: monad define
  Description@.1 ('166 is CLXVI')
  Order@.1 (17)

  NB. number   =. 166
  NB. expected =. 'CLXVI'
  assert 'CLXVI' -: roman 166
)

roman_numerals_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_18  =: monad define
  Description@.1 ('402 is CDII')
  Order@.1 (18)

  NB. number   =. 402
  NB. expected =. 'CDII'
  assert 'CDII' -: roman 402
)

roman_numerals_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_19  =: monad define
  Description@.1 ('575 is DLXXV')
  Order@.1 (19)

  NB. number   =. 575
  NB. expected =. 'DLXXV'
  assert 'DLXXV' -: roman 575
)

roman_numerals_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_20  =: monad define
  Description@.1 ('666 is DCLXVI')
  Order@.1 (20)

  NB. number   =. 666
  NB. expected =. 'DCLXVI'
  assert 'DCLXVI' -: roman 666
)

roman_numerals_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_21  =: monad define
  Description@.1 ('911 is CMXI')
  Order@.1 (21)

  NB. number   =. 911
  NB. expected =. 'CMXI'
  assert 'CMXI' -: roman 911
)

roman_numerals_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_22  =: monad define
  Description@.1 ('1024 is MXXIV')
  Order@.1 (22)

  NB. number   =. 1024
  NB. expected =. 'MXXIV'
  assert 'MXXIV' -: roman 1024
)

roman_numerals_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_23  =: monad define
  Description@.1 ('1666 is MDCLXVI')
  Order@.1 (23)

  NB. number   =. 1666
  NB. expected =. 'MDCLXVI'
  assert 'MDCLXVI' -: roman 1666
)

roman_numerals_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_24  =: monad define
  Description@.1 ('3000 is MMM')
  Order@.1 (24)

  NB. number   =. 3000
  NB. expected =. 'MMM'
  assert 'MMM' -: roman 3000
)

roman_numerals_test_25_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_25  =: monad define
  Description@.1 ('3001 is MMMI')
  Order@.1 (25)

  NB. number   =. 3001
  NB. expected =. 'MMMI'
  assert 'MMMI' -: roman 3001
)

roman_numerals_test_26_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_26  =: monad define
  Description@.1 ('3888 is MMMDCCCLXXXVIII')
  Order@.1 (26)

  NB. number   =. 3888
  NB. expected =. 'MMMDCCCLXXXVIII'
  assert 'MMMDCCCLXXXVIII' -: roman 3888
)

roman_numerals_test_27_ignore=: 1 NB. Change this value to 0 to run this test
test_roman_numerals_test_27  =: monad define
  Description@.1 ('3999 is MMMCMXCIX')
  Order@.1 (27)

  NB. number   =. 3999
  NB. expected =. 'MMMCMXCIX'
  assert 'MMMCMXCIX' -: roman 3999
)

