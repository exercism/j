load 'raindrops.ijs'

before_all=: monad define  
  order=: i.0
  tasks=: 1
)

after_all=: monad define
  (, LF ,~"1 ": order ,. tasks) 1!:2 < jpath '~temp/helper.txt'
)


sound_for_1_is_1_ignore=: 0
test_sound_for_1_is_1  =: monad define
  order=: order,1
  assert (1$'1') -: convert 1
)

sound_for_3_is_Pling_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_3_is_Pling  =: monad define
  order=: order,2
  assert 'Pling' -: convert 3
)

sound_for_5_is_Plang_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_5_is_Plang  =: monad define
  order=: order,3
  assert 'Plang' -: convert 5
)

sound_for_7_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_7_is_Plong  =: monad define
  order=: order,4
  assert 'Plong' -: convert 7
)

sound_for_6_is_Pling_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_6_is_Pling  =: monad define
  order=: order,5
  assert 'Pling' -: convert 6
)

sound_for_8_is_8_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_8_is_8  =: monad define
  order=: order,6
  assert (1$'8') -: convert 8
)

sound_for_9_is_Pling_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_9_is_Pling  =: monad define
  order=: order,7
  assert 'Pling' -: convert 9
)

sound_for_10_is_Plang_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_10_is_Plang  =: monad define
  order=: order,8
  assert 'Plang' -: convert 10
)

sound_for_14_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_14_is_Plong  =: monad define
  order=: order,9
  assert 'Plong' -: convert 14
)

sound_for_15_is_Plang_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_15_is_Plang  =: monad define
  order=: order,10
  assert 'PlingPlang' -: convert 15
)

sound_for_21_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_21_is_Plong  =: monad define
  order=: order,11
  assert 'PlingPlong' -: convert 21
)

sound_for_25_is_Plang_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_25_is_Plang  =: monad define
  order=: order,12
  assert 'Plang' -: convert 25
)

sound_for_27_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_27_is_Plong  =: monad define
  order=: order,13
  assert 'Pling' -: convert 27
)

sound_for_35_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_35_is_Plong  =: monad define
  order=: order,14
  assert 'PlangPlong' -: convert 35
)

sound_for_49_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_49_is_Plong  =: monad define
  order=: order,15
  assert 'Plong' -: convert 49
)

sound_for_52_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_52_is_Plong  =: monad define
  order=: order,16
  assert '52' -: convert 52
)

sound_for_105_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_105_is_Plong  =: monad define
  order=: order,17
  assert 'PlingPlangPlong' -: convert 105
)

sound_for_3125_is_Plong_ignore=: 1 NB. Change this value to 0 to run this test
test_sound_for_3125_is_Plong  =: monad define
  order=: order,18
  assert 'Plang' -: convert 3125
)
