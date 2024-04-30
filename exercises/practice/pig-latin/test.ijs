load 'pig-latin.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


pig_latin_test_01_ignore=: 0
test_pig_latin_test_01  =: monad define
  Description@.1 ('word beginning with a')
  Order@.1 (1)

  NB. phrase   =. 'apple'
  NB. expected =. 'appleay'
  assert 'appleay' -: translate 'apple'
)

pig_latin_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_02  =: monad define
  Description@.1 ('word beginning with e')
  Order@.1 (2)

  NB. phrase   =. 'ear'
  NB. expected =. 'earay'
  assert 'earay' -: translate 'ear'
)

pig_latin_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_03  =: monad define
  Description@.1 ('word beginning with i')
  Order@.1 (3)

  NB. phrase   =. 'igloo'
  NB. expected =. 'iglooay'
  assert 'iglooay' -: translate 'igloo'
)

pig_latin_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_04  =: monad define
  Description@.1 ('word beginning with o')
  Order@.1 (4)

  NB. phrase   =. 'object'
  NB. expected =. 'objectay'
  assert 'objectay' -: translate 'object'
)

pig_latin_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_05  =: monad define
  Description@.1 ('word beginning with u')
  Order@.1 (5)

  NB. phrase   =. 'under'
  NB. expected =. 'underay'
  assert 'underay' -: translate 'under'
)

pig_latin_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_06  =: monad define
  Description@.1 ('word beginning with a vowel and followed by a qu')
  Order@.1 (6)

  NB. phrase   =. 'equal'
  NB. expected =. 'equalay'
  assert 'equalay' -: translate 'equal'
)

pig_latin_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_07  =: monad define
  Description@.1 ('word beginning with p')
  Order@.1 (7)

  NB. phrase   =. 'pig'
  NB. expected =. 'igpay'
  assert 'igpay' -: translate 'pig'
)

pig_latin_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_08  =: monad define
  Description@.1 ('word beginning with k')
  Order@.1 (8)

  NB. phrase   =. 'koala'
  NB. expected =. 'oalakay'
  assert 'oalakay' -: translate 'koala'
)

pig_latin_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_09  =: monad define
  Description@.1 ('word beginning with x')
  Order@.1 (9)

  NB. phrase   =. 'xenon'
  NB. expected =. 'enonxay'
  assert 'enonxay' -: translate 'xenon'
)

pig_latin_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_10  =: monad define
  Description@.1 ('word beginning with q without a following u')
  Order@.1 (10)

  NB. phrase   =. 'qat'
  NB. expected =. 'atqay'
  assert 'atqay' -: translate 'qat'
)

pig_latin_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_11  =: monad define
  Description@.1 ('word beginning with ch')
  Order@.1 (11)

  NB. phrase   =. 'chair'
  NB. expected =. 'airchay'
  assert 'airchay' -: translate 'chair'
)

pig_latin_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_12  =: monad define
  Description@.1 ('word beginning with qu')
  Order@.1 (12)

  NB. phrase   =. 'queen'
  NB. expected =. 'eenquay'
  assert 'eenquay' -: translate 'queen'
)

pig_latin_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_13  =: monad define
  Description@.1 ('word beginning with qu and a preceding consonant')
  Order@.1 (13)

  NB. phrase   =. 'square'
  NB. expected =. 'aresquay'
  assert 'aresquay' -: translate 'square'
)

pig_latin_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_14  =: monad define
  Description@.1 ('word beginning with th')
  Order@.1 (14)

  NB. phrase   =. 'therapy'
  NB. expected =. 'erapythay'
  assert 'erapythay' -: translate 'therapy'
)

pig_latin_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_15  =: monad define
  Description@.1 ('word beginning with thr')
  Order@.1 (15)

  NB. phrase   =. 'thrush'
  NB. expected =. 'ushthray'
  assert 'ushthray' -: translate 'thrush'
)

pig_latin_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_16  =: monad define
  Description@.1 ('word beginning with sch')
  Order@.1 (16)

  NB. phrase   =. 'school'
  NB. expected =. 'oolschay'
  assert 'oolschay' -: translate 'school'
)

pig_latin_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_17  =: monad define
  Description@.1 ('word beginning with yt')
  Order@.1 (17)

  NB. phrase   =. 'yttria'
  NB. expected =. 'yttriaay'
  assert 'yttriaay' -: translate 'yttria'
)

pig_latin_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_18  =: monad define
  Description@.1 ('word beginning with xr')
  Order@.1 (18)

  NB. phrase   =. 'xray'
  NB. expected =. 'xrayay'
  assert 'xrayay' -: translate 'xray'
)

pig_latin_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_19  =: monad define
  Description@.1 ('y is treated like a consonant at the beginning of a word')
  Order@.1 (19)

  NB. phrase   =. 'yellow'
  NB. expected =. 'ellowyay'
  assert 'ellowyay' -: translate 'yellow'
)

pig_latin_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_20  =: monad define
  Description@.1 ('y is treated like a vowel at the end of a consonant cluster')
  Order@.1 (20)

  NB. phrase   =. 'rhythm'
  NB. expected =. 'ythmrhay'
  assert 'ythmrhay' -: translate 'rhythm'
)

pig_latin_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_21  =: monad define
  Description@.1 ('y as second letter in two letter word')
  Order@.1 (21)

  NB. phrase   =. 'my'
  NB. expected =. 'ymay'
  assert 'ymay' -: translate 'my'
)

pig_latin_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_22  =: monad define
  Description@.1 ('a whole phrase')
  Order@.1 (22)

  NB. phrase   =. 'quick fast run'
  NB. expected =. 'ickquay astfay unray'
  assert 'ickquay astfay unray' -: translate 'quick fast run'
)

