load 'meetup.ijs'


meetup_test_01_ignore=: 0
test_meetup_test_01  =: monad define
  Description=: 'when teenth Monday is the 13th, the first day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 05 13
  assert 2013 05 13 =&,  meetup 2013;5;'teenth';'Monday'
)

meetup_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_02  =: monad define
  Description=: 'when teenth Monday is the 19th, the last day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 08 19
  assert 2013 08 19 =&,  meetup 2013;8;'teenth';'Monday'
)

meetup_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_03  =: monad define
  Description=: 'when teenth Monday is some day in the middle of the teenth week'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 09 16
  assert 2013 09 16 =&,  meetup 2013;9;'teenth';'Monday'
)

meetup_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_04  =: monad define
  Description=: 'when teenth Tuesday is the 19th, the last day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 03 19
  assert 2013 03 19 =&,  meetup 2013;3;'teenth';'Tuesday'
)

meetup_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_05  =: monad define
  Description=: 'when teenth Tuesday is some day in the middle of the teenth week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 04 16
  assert 2013 04 16 =&,  meetup 2013;4;'teenth';'Tuesday'
)

meetup_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_06  =: monad define
  Description=: 'when teenth Tuesday is the 13th, the first day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 08 13
  assert 2013 08 13 =&,  meetup 2013;8;'teenth';'Tuesday'
)

meetup_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_07  =: monad define
  Description=: 'when teenth Wednesday is some day in the middle of the teenth week'


  NB. year      =. 2013
  NB. month     =. 1
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 01 16
  assert 2013 01 16 =&,  meetup 2013;1;'teenth';'Wednesday'
)

meetup_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_08  =: monad define
  Description=: 'when teenth Wednesday is the 13th, the first day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 2
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 02 13
  assert 2013 02 13 =&,  meetup 2013;2;'teenth';'Wednesday'
)

meetup_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_09  =: monad define
  Description=: 'when teenth Wednesday is the 19th, the last day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 06 19
  assert 2013 06 19 =&,  meetup 2013;6;'teenth';'Wednesday'
)

meetup_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_10  =: monad define
  Description=: 'when teenth Thursday is some day in the middle of the teenth week'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 05 16
  assert 2013 05 16 =&,  meetup 2013;5;'teenth';'Thursday'
)

meetup_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_11  =: monad define
  Description=: 'when teenth Thursday is the 13th, the first day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 06 13
  assert 2013 06 13 =&,  meetup 2013;6;'teenth';'Thursday'
)

meetup_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_12  =: monad define
  Description=: 'when teenth Thursday is the 19th, the last day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 09 19
  assert 2013 09 19 =&,  meetup 2013;9;'teenth';'Thursday'
)

meetup_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_13  =: monad define
  Description=: 'when teenth Friday is the 19th, the last day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 04 19
  assert 2013 04 19 =&,  meetup 2013;4;'teenth';'Friday'
)

meetup_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_14  =: monad define
  Description=: 'when teenth Friday is some day in the middle of the teenth week'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 08 16
  assert 2013 08 16 =&,  meetup 2013;8;'teenth';'Friday'
)

meetup_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_15  =: monad define
  Description=: 'when teenth Friday is the 13th, the first day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 09 13
  assert 2013 09 13 =&,  meetup 2013;9;'teenth';'Friday'
)

meetup_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_16  =: monad define
  Description=: 'when teenth Saturday is some day in the middle of the teenth week'


  NB. year      =. 2013
  NB. month     =. 2
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 02 16
  assert 2013 02 16 =&,  meetup 2013;2;'teenth';'Saturday'
)

meetup_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_17  =: monad define
  Description=: 'when teenth Saturday is the 13th, the first day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 04 13
  assert 2013 04 13 =&,  meetup 2013;4;'teenth';'Saturday'
)

meetup_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_18  =: monad define
  Description=: 'when teenth Saturday is the 19th, the last day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 10
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 10 19
  assert 2013 10 19 =&,  meetup 2013;10;'teenth';'Saturday'
)

meetup_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_19  =: monad define
  Description=: 'when teenth Sunday is the 19th, the last day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 05 19
  assert 2013 05 19 =&,  meetup 2013;5;'teenth';'Sunday'
)

meetup_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_20  =: monad define
  Description=: 'when teenth Sunday is some day in the middle of the teenth week'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 06 16
  assert 2013 06 16 =&,  meetup 2013;6;'teenth';'Sunday'
)

meetup_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_21  =: monad define
  Description=: 'when teenth Sunday is the 13th, the first day of the teenth week'


  NB. year      =. 2013
  NB. month     =. 10
  NB. week      =. 'teenth'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 10 13
  assert 2013 10 13 =&,  meetup 2013;10;'teenth';'Sunday'
)

meetup_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_22  =: monad define
  Description=: 'when first Monday is some day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'first'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 03 04
  assert 2013 03 04 =&,  meetup 2013;3;'first';'Monday'
)

meetup_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_23  =: monad define
  Description=: 'when first Monday is the 1st, the first day of the first week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'first'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 04 01
  assert 2013 04 01 =&,  meetup 2013;4;'first';'Monday'
)

meetup_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_24  =: monad define
  Description=: 'when first Tuesday is the 7th, the last day of the first week'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'first'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 05 07
  assert 2013 05 07 =&,  meetup 2013;5;'first';'Tuesday'
)

meetup_test_25_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_25  =: monad define
  Description=: 'when first Tuesday is some day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'first'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 06 04
  assert 2013 06 04 =&,  meetup 2013;6;'first';'Tuesday'
)

meetup_test_26_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_26  =: monad define
  Description=: 'when first Wednesday is some day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 7
  NB. week      =. 'first'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 07 03
  assert 2013 07 03 =&,  meetup 2013;7;'first';'Wednesday'
)

meetup_test_27_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_27  =: monad define
  Description=: 'when first Wednesday is the 7th, the last day of the first week'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'first'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 08 07
  assert 2013 08 07 =&,  meetup 2013;8;'first';'Wednesday'
)

meetup_test_28_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_28  =: monad define
  Description=: 'when first Thursday is some day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'first'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 09 05
  assert 2013 09 05 =&,  meetup 2013;9;'first';'Thursday'
)

meetup_test_29_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_29  =: monad define
  Description=: 'when first Thursday is another day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 10
  NB. week      =. 'first'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 10 03
  assert 2013 10 03 =&,  meetup 2013;10;'first';'Thursday'
)

meetup_test_30_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_30  =: monad define
  Description=: 'when first Friday is the 1st, the first day of the first week'


  NB. year      =. 2013
  NB. month     =. 11
  NB. week      =. 'first'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 11 01
  assert 2013 11 01 =&,  meetup 2013;11;'first';'Friday'
)

meetup_test_31_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_31  =: monad define
  Description=: 'when first Friday is some day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 12
  NB. week      =. 'first'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 12 06
  assert 2013 12 06 =&,  meetup 2013;12;'first';'Friday'
)

meetup_test_32_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_32  =: monad define
  Description=: 'when first Saturday is some day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 1
  NB. week      =. 'first'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 01 05
  assert 2013 01 05 =&,  meetup 2013;1;'first';'Saturday'
)

meetup_test_33_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_33  =: monad define
  Description=: 'when first Saturday is another day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 2
  NB. week      =. 'first'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 02 02
  assert 2013 02 02 =&,  meetup 2013;2;'first';'Saturday'
)

meetup_test_34_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_34  =: monad define
  Description=: 'when first Sunday is some day in the middle of the first week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'first'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 03 03
  assert 2013 03 03 =&,  meetup 2013;3;'first';'Sunday'
)

meetup_test_35_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_35  =: monad define
  Description=: 'when first Sunday is the 7th, the last day of the first week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'first'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 04 07
  assert 2013 04 07 =&,  meetup 2013;4;'first';'Sunday'
)

meetup_test_36_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_36  =: monad define
  Description=: 'when second Monday is some day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'second'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 03 11
  assert 2013 03 11 =&,  meetup 2013;3;'second';'Monday'
)

meetup_test_37_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_37  =: monad define
  Description=: 'when second Monday is the 8th, the first day of the second week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'second'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 04 08
  assert 2013 04 08 =&,  meetup 2013;4;'second';'Monday'
)

meetup_test_38_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_38  =: monad define
  Description=: 'when second Tuesday is the 14th, the last day of the second week'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'second'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 05 14
  assert 2013 05 14 =&,  meetup 2013;5;'second';'Tuesday'
)

meetup_test_39_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_39  =: monad define
  Description=: 'when second Tuesday is some day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'second'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 06 11
  assert 2013 06 11 =&,  meetup 2013;6;'second';'Tuesday'
)

meetup_test_40_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_40  =: monad define
  Description=: 'when second Wednesday is some day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 7
  NB. week      =. 'second'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 07 10
  assert 2013 07 10 =&,  meetup 2013;7;'second';'Wednesday'
)

meetup_test_41_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_41  =: monad define
  Description=: 'when second Wednesday is the 14th, the last day of the second week'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'second'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 08 14
  assert 2013 08 14 =&,  meetup 2013;8;'second';'Wednesday'
)

meetup_test_42_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_42  =: monad define
  Description=: 'when second Thursday is some day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'second'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 09 12
  assert 2013 09 12 =&,  meetup 2013;9;'second';'Thursday'
)

meetup_test_43_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_43  =: monad define
  Description=: 'when second Thursday is another day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 10
  NB. week      =. 'second'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 10 10
  assert 2013 10 10 =&,  meetup 2013;10;'second';'Thursday'
)

meetup_test_44_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_44  =: monad define
  Description=: 'when second Friday is the 8th, the first day of the second week'


  NB. year      =. 2013
  NB. month     =. 11
  NB. week      =. 'second'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 11 08
  assert 2013 11 08 =&,  meetup 2013;11;'second';'Friday'
)

meetup_test_45_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_45  =: monad define
  Description=: 'when second Friday is some day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 12
  NB. week      =. 'second'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 12 13
  assert 2013 12 13 =&,  meetup 2013;12;'second';'Friday'
)

meetup_test_46_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_46  =: monad define
  Description=: 'when second Saturday is some day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 1
  NB. week      =. 'second'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 01 12
  assert 2013 01 12 =&,  meetup 2013;1;'second';'Saturday'
)

meetup_test_47_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_47  =: monad define
  Description=: 'when second Saturday is another day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 2
  NB. week      =. 'second'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 02 09
  assert 2013 02 09 =&,  meetup 2013;2;'second';'Saturday'
)

meetup_test_48_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_48  =: monad define
  Description=: 'when second Sunday is some day in the middle of the second week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'second'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 03 10
  assert 2013 03 10 =&,  meetup 2013;3;'second';'Sunday'
)

meetup_test_49_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_49  =: monad define
  Description=: 'when second Sunday is the 14th, the last day of the second week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'second'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 04 14
  assert 2013 04 14 =&,  meetup 2013;4;'second';'Sunday'
)

meetup_test_50_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_50  =: monad define
  Description=: 'when third Monday is some day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'third'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 03 18
  assert 2013 03 18 =&,  meetup 2013;3;'third';'Monday'
)

meetup_test_51_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_51  =: monad define
  Description=: 'when third Monday is the 15th, the first day of the third week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'third'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 04 15
  assert 2013 04 15 =&,  meetup 2013;4;'third';'Monday'
)

meetup_test_52_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_52  =: monad define
  Description=: 'when third Tuesday is the 21st, the last day of the third week'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'third'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 05 21
  assert 2013 05 21 =&,  meetup 2013;5;'third';'Tuesday'
)

meetup_test_53_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_53  =: monad define
  Description=: 'when third Tuesday is some day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'third'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 06 18
  assert 2013 06 18 =&,  meetup 2013;6;'third';'Tuesday'
)

meetup_test_54_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_54  =: monad define
  Description=: 'when third Wednesday is some day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 7
  NB. week      =. 'third'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 07 17
  assert 2013 07 17 =&,  meetup 2013;7;'third';'Wednesday'
)

meetup_test_55_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_55  =: monad define
  Description=: 'when third Wednesday is the 21st, the last day of the third week'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'third'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 08 21
  assert 2013 08 21 =&,  meetup 2013;8;'third';'Wednesday'
)

meetup_test_56_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_56  =: monad define
  Description=: 'when third Thursday is some day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'third'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 09 19
  assert 2013 09 19 =&,  meetup 2013;9;'third';'Thursday'
)

meetup_test_57_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_57  =: monad define
  Description=: 'when third Thursday is another day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 10
  NB. week      =. 'third'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 10 17
  assert 2013 10 17 =&,  meetup 2013;10;'third';'Thursday'
)

meetup_test_58_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_58  =: monad define
  Description=: 'when third Friday is the 15th, the first day of the third week'


  NB. year      =. 2013
  NB. month     =. 11
  NB. week      =. 'third'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 11 15
  assert 2013 11 15 =&,  meetup 2013;11;'third';'Friday'
)

meetup_test_59_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_59  =: monad define
  Description=: 'when third Friday is some day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 12
  NB. week      =. 'third'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 12 20
  assert 2013 12 20 =&,  meetup 2013;12;'third';'Friday'
)

meetup_test_60_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_60  =: monad define
  Description=: 'when third Saturday is some day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 1
  NB. week      =. 'third'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 01 19
  assert 2013 01 19 =&,  meetup 2013;1;'third';'Saturday'
)

meetup_test_61_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_61  =: monad define
  Description=: 'when third Saturday is another day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 2
  NB. week      =. 'third'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 02 16
  assert 2013 02 16 =&,  meetup 2013;2;'third';'Saturday'
)

meetup_test_62_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_62  =: monad define
  Description=: 'when third Sunday is some day in the middle of the third week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'third'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 03 17
  assert 2013 03 17 =&,  meetup 2013;3;'third';'Sunday'
)

meetup_test_63_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_63  =: monad define
  Description=: 'when third Sunday is the 21st, the last day of the third week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'third'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 04 21
  assert 2013 04 21 =&,  meetup 2013;4;'third';'Sunday'
)

meetup_test_64_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_64  =: monad define
  Description=: 'when fourth Monday is some day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 03 25
  assert 2013 03 25 =&,  meetup 2013;3;'fourth';'Monday'
)

meetup_test_65_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_65  =: monad define
  Description=: 'when fourth Monday is the 22nd, the first day of the fourth week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 04 22
  assert 2013 04 22 =&,  meetup 2013;4;'fourth';'Monday'
)

meetup_test_66_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_66  =: monad define
  Description=: 'when fourth Tuesday is the 28th, the last day of the fourth week'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 05 28
  assert 2013 05 28 =&,  meetup 2013;5;'fourth';'Tuesday'
)

meetup_test_67_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_67  =: monad define
  Description=: 'when fourth Tuesday is some day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 06 25
  assert 2013 06 25 =&,  meetup 2013;6;'fourth';'Tuesday'
)

meetup_test_68_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_68  =: monad define
  Description=: 'when fourth Wednesday is some day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 7
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 07 24
  assert 2013 07 24 =&,  meetup 2013;7;'fourth';'Wednesday'
)

meetup_test_69_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_69  =: monad define
  Description=: 'when fourth Wednesday is the 28th, the last day of the fourth week'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 08 28
  assert 2013 08 28 =&,  meetup 2013;8;'fourth';'Wednesday'
)

meetup_test_70_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_70  =: monad define
  Description=: 'when fourth Thursday is some day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 09 26
  assert 2013 09 26 =&,  meetup 2013;9;'fourth';'Thursday'
)

meetup_test_71_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_71  =: monad define
  Description=: 'when fourth Thursday is another day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 10
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 10 24
  assert 2013 10 24 =&,  meetup 2013;10;'fourth';'Thursday'
)

meetup_test_72_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_72  =: monad define
  Description=: 'when fourth Friday is the 22nd, the first day of the fourth week'


  NB. year      =. 2013
  NB. month     =. 11
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 11 22
  assert 2013 11 22 =&,  meetup 2013;11;'fourth';'Friday'
)

meetup_test_73_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_73  =: monad define
  Description=: 'when fourth Friday is some day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 12
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 12 27
  assert 2013 12 27 =&,  meetup 2013;12;'fourth';'Friday'
)

meetup_test_74_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_74  =: monad define
  Description=: 'when fourth Saturday is some day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 1
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 01 26
  assert 2013 01 26 =&,  meetup 2013;1;'fourth';'Saturday'
)

meetup_test_75_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_75  =: monad define
  Description=: 'when fourth Saturday is another day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 2
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 02 23
  assert 2013 02 23 =&,  meetup 2013;2;'fourth';'Saturday'
)

meetup_test_76_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_76  =: monad define
  Description=: 'when fourth Sunday is some day in the middle of the fourth week'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 03 24
  assert 2013 03 24 =&,  meetup 2013;3;'fourth';'Sunday'
)

meetup_test_77_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_77  =: monad define
  Description=: 'when fourth Sunday is the 28th, the last day of the fourth week'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'fourth'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 04 28
  assert 2013 04 28 =&,  meetup 2013;4;'fourth';'Sunday'
)

meetup_test_78_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_78  =: monad define
  Description=: 'last Monday in a month      with four Mondays'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'last'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 03 25
  assert 2013 03 25 =&,  meetup 2013;3;'last';'Monday'
)

meetup_test_79_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_79  =: monad define
  Description=: 'last Monday in a month      with five Mondays'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'last'
  NB. dayofweek =. 'Monday'
  NB. expected  =. 2013 04 29
  assert 2013 04 29 =&,  meetup 2013;4;'last';'Monday'
)

meetup_test_80_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_80  =: monad define
  Description=: 'last Tuesday in a month      with four Tuesdays'


  NB. year      =. 2013
  NB. month     =. 5
  NB. week      =. 'last'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 05 28
  assert 2013 05 28 =&,  meetup 2013;5;'last';'Tuesday'
)

meetup_test_81_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_81  =: monad define
  Description=: 'last Tuesday in another month      with four Tuesdays'


  NB. year      =. 2013
  NB. month     =. 6
  NB. week      =. 'last'
  NB. dayofweek =. 'Tuesday'
  NB. expected  =. 2013 06 25
  assert 2013 06 25 =&,  meetup 2013;6;'last';'Tuesday'
)

meetup_test_82_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_82  =: monad define
  Description=: 'last Wednesday in a month      with five Wednesdays'


  NB. year      =. 2013
  NB. month     =. 7
  NB. week      =. 'last'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 07 31
  assert 2013 07 31 =&,  meetup 2013;7;'last';'Wednesday'
)

meetup_test_83_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_83  =: monad define
  Description=: 'last Wednesday in a month      with four Wednesdays'


  NB. year      =. 2013
  NB. month     =. 8
  NB. week      =. 'last'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2013 08 28
  assert 2013 08 28 =&,  meetup 2013;8;'last';'Wednesday'
)

meetup_test_84_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_84  =: monad define
  Description=: 'last Thursday in a month      with four Thursdays'


  NB. year      =. 2013
  NB. month     =. 9
  NB. week      =. 'last'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 09 26
  assert 2013 09 26 =&,  meetup 2013;9;'last';'Thursday'
)

meetup_test_85_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_85  =: monad define
  Description=: 'last Thursday in a month      with five Thursdays'


  NB. year      =. 2013
  NB. month     =. 10
  NB. week      =. 'last'
  NB. dayofweek =. 'Thursday'
  NB. expected  =. 2013 10 31
  assert 2013 10 31 =&,  meetup 2013;10;'last';'Thursday'
)

meetup_test_86_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_86  =: monad define
  Description=: 'last Friday in a month      with five Fridays'


  NB. year      =. 2013
  NB. month     =. 11
  NB. week      =. 'last'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 11 29
  assert 2013 11 29 =&,  meetup 2013;11;'last';'Friday'
)

meetup_test_87_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_87  =: monad define
  Description=: 'last Friday in a month      with four Fridays'


  NB. year      =. 2013
  NB. month     =. 12
  NB. week      =. 'last'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2013 12 27
  assert 2013 12 27 =&,  meetup 2013;12;'last';'Friday'
)

meetup_test_88_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_88  =: monad define
  Description=: 'last Saturday in a month      with four Saturdays'


  NB. year      =. 2013
  NB. month     =. 1
  NB. week      =. 'last'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 01 26
  assert 2013 01 26 =&,  meetup 2013;1;'last';'Saturday'
)

meetup_test_89_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_89  =: monad define
  Description=: 'last Saturday in another month      with four Saturdays'


  NB. year      =. 2013
  NB. month     =. 2
  NB. week      =. 'last'
  NB. dayofweek =. 'Saturday'
  NB. expected  =. 2013 02 23
  assert 2013 02 23 =&,  meetup 2013;2;'last';'Saturday'
)

meetup_test_90_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_90  =: monad define
  Description=: 'last Sunday in a month      with five Sundays'


  NB. year      =. 2013
  NB. month     =. 3
  NB. week      =. 'last'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 03 31
  assert 2013 03 31 =&,  meetup 2013;3;'last';'Sunday'
)

meetup_test_91_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_91  =: monad define
  Description=: 'last Sunday in a month      with four Sundays'


  NB. year      =. 2013
  NB. month     =. 4
  NB. week      =. 'last'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2013 04 28
  assert 2013 04 28 =&,  meetup 2013;4;'last';'Sunday'
)

meetup_test_92_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_92  =: monad define
  Description=: 'when last Wednesday in February in a leap year       is the 29th'


  NB. year      =. 2012
  NB. month     =. 2
  NB. week      =. 'last'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2012 02 29
  assert 2012 02 29 =&,  meetup 2012;2;'last';'Wednesday'
)

meetup_test_93_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_93  =: monad define
  Description=: 'last Wednesday in December that is also the last day of the year      '


  NB. year      =. 2014
  NB. month     =. 12
  NB. week      =. 'last'
  NB. dayofweek =. 'Wednesday'
  NB. expected  =. 2014 12 31
  assert 2014 12 31 =&,  meetup 2014;12;'last';'Wednesday'
)

meetup_test_94_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_94  =: monad define
  Description=: 'when last Sunday in February in a non-leap year       is not the 29th'


  NB. year      =. 2015
  NB. month     =. 2
  NB. week      =. 'last'
  NB. dayofweek =. 'Sunday'
  NB. expected  =. 2015 02 22
  assert 2015 02 22 =&,  meetup 2015;2;'last';'Sunday'
)

meetup_test_95_ignore=: 1 NB. Change this value to 0 to run this test
test_meetup_test_95  =: monad define
  Description=: 'when first Friday is the 7th, the last day of the first week'


  NB. year      =. 2012
  NB. month     =. 12
  NB. week      =. 'first'
  NB. dayofweek =. 'Friday'
  NB. expected  =. 2012 12 07
  assert 2012 12 07 =&,  meetup 2012;12;'first';'Friday'
)

