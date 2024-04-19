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

  phrase=. 'apple'
  NB. expected=. 'appleay'
  assert 'appleay' -: translate phrase
)

pig_latin_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_02  =: monad define
  Description@.1 ('word beginning with e')
  Order@.1 (2)

  phrase=. 'ear'
  NB. expected=. 'earay'
  assert 'earay' -: translate phrase
)

pig_latin_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_03  =: monad define
  Description@.1 ('word beginning with i')
  Order@.1 (3)

  phrase=. 'igloo'
  NB. expected=. 'iglooay'
  assert 'iglooay' -: translate phrase
)

pig_latin_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_04  =: monad define
  Description@.1 ('word beginning with o')
  Order@.1 (4)

  phrase=. 'object'
  NB. expected=. 'objectay'
  assert 'objectay' -: translate phrase
)

pig_latin_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_05  =: monad define
  Description@.1 ('word beginning with u')
  Order@.1 (5)

  phrase=. 'under'
  NB. expected=. 'underay'
  assert 'underay' -: translate phrase
)

pig_latin_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_06  =: monad define
  Description@.1 ('word beginning with a vowel and followed by a qu')
  Order@.1 (6)

  phrase=. 'equal'
  NB. expected=. 'equalay'
  assert 'equalay' -: translate phrase
)

pig_latin_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_07  =: monad define
  Description@.1 ('word beginning with p')
  Order@.1 (7)

  phrase=. 'pig'
  NB. expected=. 'igpay'
  assert 'igpay' -: translate phrase
)

pig_latin_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_08  =: monad define
  Description@.1 ('word beginning with k')
  Order@.1 (8)

  phrase=. 'koala'
  NB. expected=. 'oalakay'
  assert 'oalakay' -: translate phrase
)

pig_latin_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_09  =: monad define
  Description@.1 ('word beginning with x')
  Order@.1 (9)

  phrase=. 'xenon'
  NB. expected=. 'enonxay'
  assert 'enonxay' -: translate phrase
)

pig_latin_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_10  =: monad define
  Description@.1 ('word beginning with q without a following u')
  Order@.1 (10)

  phrase=. 'qat'
  NB. expected=. 'atqay'
  assert 'atqay' -: translate phrase
)

pig_latin_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_11  =: monad define
  Description@.1 ('word beginning with ch')
  Order@.1 (11)

  phrase=. 'chair'
  NB. expected=. 'airchay'
  assert 'airchay' -: translate phrase
)

pig_latin_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_12  =: monad define
  Description@.1 ('word beginning with qu')
  Order@.1 (12)

  phrase=. 'queen'
  NB. expected=. 'eenquay'
  assert 'eenquay' -: translate phrase
)

pig_latin_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_13  =: monad define
  Description@.1 ('word beginning with qu and a preceding consonant')
  Order@.1 (13)

  phrase=. 'square'
  NB. expected=. 'aresquay'
  assert 'aresquay' -: translate phrase
)

pig_latin_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_14  =: monad define
  Description@.1 ('word beginning with th')
  Order@.1 (14)

  phrase=. 'therapy'
  NB. expected=. 'erapythay'
  assert 'erapythay' -: translate phrase
)

pig_latin_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_15  =: monad define
  Description@.1 ('word beginning with thr')
  Order@.1 (15)

  phrase=. 'thrush'
  NB. expected=. 'ushthray'
  assert 'ushthray' -: translate phrase
)

pig_latin_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_16  =: monad define
  Description@.1 ('word beginning with sch')
  Order@.1 (16)

  phrase=. 'school'
  NB. expected=. 'oolschay'
  assert 'oolschay' -: translate phrase
)

pig_latin_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_17  =: monad define
  Description@.1 ('word beginning with yt')
  Order@.1 (17)

  phrase=. 'yttria'
  NB. expected=. 'yttriaay'
  assert 'yttriaay' -: translate phrase
)

pig_latin_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_18  =: monad define
  Description@.1 ('word beginning with xr')
  Order@.1 (18)

  phrase=. 'xray'
  NB. expected=. 'xrayay'
  assert 'xrayay' -: translate phrase
)

pig_latin_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_19  =: monad define
  Description@.1 ('y is treated like a consonant at the beginning of a word')
  Order@.1 (19)

  phrase=. 'yellow'
  NB. expected=. 'ellowyay'
  assert 'ellowyay' -: translate phrase
)

pig_latin_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_20  =: monad define
  Description@.1 ('y is treated like a vowel at the end of a consonant cluster')
  Order@.1 (20)

  phrase=. 'rhythm'
  NB. expected=. 'ythmrhay'
  assert 'ythmrhay' -: translate phrase
)

pig_latin_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_21  =: monad define
  Description@.1 ('y as second letter in two letter word')
  Order@.1 (21)

  phrase=. 'my'
  NB. expected=. 'ymay'
  assert 'ymay' -: translate phrase
)

pig_latin_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_22  =: monad define
  Description@.1 ('a whole phrase')
  Order@.1 (22)

  phrase=. 'quick fast run'
  NB. expected=. 'ickquay astfay unray'
  assert 'ickquay astfay unray' -: translate phrase
)

