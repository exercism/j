load 'pig-latin.ijs'


pig_latin_test_01_ignore=: 0
test_pig_latin_test_01  =: monad define
  Description=: 'word beginning with a'


  NB. phrase   =. 'apple'
  NB. expected =. 'appleay'
  assert 'appleay' -: translate 'apple'
)

pig_latin_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_02  =: monad define
  Description=: 'word beginning with e'


  NB. phrase   =. 'ear'
  NB. expected =. 'earay'
  assert 'earay' -: translate 'ear'
)

pig_latin_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_03  =: monad define
  Description=: 'word beginning with i'


  NB. phrase   =. 'igloo'
  NB. expected =. 'iglooay'
  assert 'iglooay' -: translate 'igloo'
)

pig_latin_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_04  =: monad define
  Description=: 'word beginning with o'


  NB. phrase   =. 'object'
  NB. expected =. 'objectay'
  assert 'objectay' -: translate 'object'
)

pig_latin_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_05  =: monad define
  Description=: 'word beginning with u'


  NB. phrase   =. 'under'
  NB. expected =. 'underay'
  assert 'underay' -: translate 'under'
)

pig_latin_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_06  =: monad define
  Description=: 'word beginning with a vowel and followed by a qu'


  NB. phrase   =. 'equal'
  NB. expected =. 'equalay'
  assert 'equalay' -: translate 'equal'
)

pig_latin_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_07  =: monad define
  Description=: 'word beginning with p'


  NB. phrase   =. 'pig'
  NB. expected =. 'igpay'
  assert 'igpay' -: translate 'pig'
)

pig_latin_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_08  =: monad define
  Description=: 'word beginning with k'


  NB. phrase   =. 'koala'
  NB. expected =. 'oalakay'
  assert 'oalakay' -: translate 'koala'
)

pig_latin_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_09  =: monad define
  Description=: 'word beginning with x'


  NB. phrase   =. 'xenon'
  NB. expected =. 'enonxay'
  assert 'enonxay' -: translate 'xenon'
)

pig_latin_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_10  =: monad define
  Description=: 'word beginning with q without a following u'


  NB. phrase   =. 'qat'
  NB. expected =. 'atqay'
  assert 'atqay' -: translate 'qat'
)

pig_latin_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_11  =: monad define
  Description=: 'word beginning with ch'


  NB. phrase   =. 'chair'
  NB. expected =. 'airchay'
  assert 'airchay' -: translate 'chair'
)

pig_latin_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_12  =: monad define
  Description=: 'word beginning with qu'


  NB. phrase   =. 'queen'
  NB. expected =. 'eenquay'
  assert 'eenquay' -: translate 'queen'
)

pig_latin_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_13  =: monad define
  Description=: 'word beginning with qu and a preceding consonant'


  NB. phrase   =. 'square'
  NB. expected =. 'aresquay'
  assert 'aresquay' -: translate 'square'
)

pig_latin_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_14  =: monad define
  Description=: 'word beginning with th'


  NB. phrase   =. 'therapy'
  NB. expected =. 'erapythay'
  assert 'erapythay' -: translate 'therapy'
)

pig_latin_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_15  =: monad define
  Description=: 'word beginning with thr'


  NB. phrase   =. 'thrush'
  NB. expected =. 'ushthray'
  assert 'ushthray' -: translate 'thrush'
)

pig_latin_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_16  =: monad define
  Description=: 'word beginning with sch'


  NB. phrase   =. 'school'
  NB. expected =. 'oolschay'
  assert 'oolschay' -: translate 'school'
)

pig_latin_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_17  =: monad define
  Description=: 'word beginning with yt'


  NB. phrase   =. 'yttria'
  NB. expected =. 'yttriaay'
  assert 'yttriaay' -: translate 'yttria'
)

pig_latin_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_18  =: monad define
  Description=: 'word beginning with xr'


  NB. phrase   =. 'xray'
  NB. expected =. 'xrayay'
  assert 'xrayay' -: translate 'xray'
)

pig_latin_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_19  =: monad define
  Description=: 'y is treated like a consonant at the beginning of a word'


  NB. phrase   =. 'yellow'
  NB. expected =. 'ellowyay'
  assert 'ellowyay' -: translate 'yellow'
)

pig_latin_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_20  =: monad define
  Description=: 'y is treated like a vowel at the end of a consonant cluster'


  NB. phrase   =. 'rhythm'
  NB. expected =. 'ythmrhay'
  assert 'ythmrhay' -: translate 'rhythm'
)

pig_latin_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_21  =: monad define
  Description=: 'y as second letter in two letter word'


  NB. phrase   =. 'my'
  NB. expected =. 'ymay'
  assert 'ymay' -: translate 'my'
)

pig_latin_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_pig_latin_test_22  =: monad define
  Description=: 'a whole phrase'


  NB. phrase   =. 'quick fast run'
  NB. expected =. 'ickquay astfay unray'
  assert 'ickquay astfay unray' -: translate 'quick fast run'
)

