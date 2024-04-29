load 'anagram.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


anagram_test_01_ignore=: 0
test_anagram_test_01  =: monad define
  Description@.1 ('no matches')
  Order@.1 (1)

  NB. subject    =. 'diaper'
  NB. candidates =. 'hello';'world';'zombies';'pants'
  NB. expected   =. ''
  assert '' -: 'diaper' findAnagrams 'hello';'world';'zombies';'pants'
)

anagram_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_02  =: monad define
  Description@.1 ('detects two anagrams')
  Order@.1 (2)

  NB. subject    =. 'solemn'
  NB. candidates =. 'lemons';'cherry';'melons'
  NB. expected   =. 'lemons';'melons'
  assert ('lemons';'melons') -: 'solemn' findAnagrams 'lemons';'cherry';'melons'
)

anagram_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_03  =: monad define
  Description@.1 ('does not detect anagram subsets')
  Order@.1 (3)

  NB. subject    =. 'good'
  NB. candidates =. 'dog';'goody'
  NB. expected   =. ''
  assert '' -: 'good' findAnagrams 'dog';'goody'
)

anagram_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_04  =: monad define
  Description@.1 ('detects anagram')
  Order@.1 (4)

  NB. subject    =. 'listen'
  NB. candidates =. 'enlists';'google';'inlets';'banana'
  NB. expected   =. ,<'inlets'
  assert (,<'inlets') -: 'listen' findAnagrams 'enlists';'google';'inlets';'banana'
)

anagram_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_05  =: monad define
  Description@.1 ('detects three anagrams')
  Order@.1 (5)

  NB. subject    =. 'allergy'
  NB. candidates =. 'gallery';'ballerina';'regally';'clergy';'largely';'leading'
  NB. expected   =. 'gallery';'regally';'largely'
  assert ('gallery';'regally';'largely') -: 'allergy' findAnagrams 'gallery';'ballerina';'regally';'clergy';'largely';'leading'
)

anagram_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_06  =: monad define
  Description@.1 ('detects multiple anagrams with different case')
  Order@.1 (6)

  NB. subject    =. 'nose'
  NB. candidates =. 'Eons';'ONES'
  NB. expected   =. 'Eons';'ONES'
  assert ('Eons';'ONES') -: 'nose' findAnagrams 'Eons';'ONES'
)

anagram_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_07  =: monad define
  Description@.1 ('does not detect non-anagrams with identical checksum')
  Order@.1 (7)

  NB. subject    =. 'mass'
  NB. candidates =. ,<'last'
  NB. expected   =. ''
  assert '' -: 'mass' findAnagrams ,<'last'
)

anagram_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_08  =: monad define
  Description@.1 ('detects anagrams case-insensitively')
  Order@.1 (8)

  NB. subject    =. 'Orchestra'
  NB. candidates =. 'cashregister';'Carthorse';'radishes'
  NB. expected   =.  ,<'Carthorse'
  assert (,<'Carthorse') -: 'Orchestra' findAnagrams 'cashregister';'Carthorse';'radishes'
)

anagram_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_09  =: monad define
  Description@.1 ('detects anagrams using case-insensitive subject')
  Order@.1 (9)

  NB. subject    =. 'Orchestra'
  NB. candidates =. 'cashregister';'carthorse';'radishes'
  NB. expected   =.  ,<'carthorse'
  assert (,<'carthorse') -: 'Orchestra' findAnagrams 'cashregister';'carthorse';'radishes'
)

anagram_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_10  =: monad define
  Description@.1 ('detects anagrams using case-insensitive possible matches')
  Order@.1 (10)

  NB. subject    =. 'orchestra'
  NB. candidates =. 'cashregister';'Carthorse';'radishes'
  NB. expected   =.  ,<'Carthorse'
  assert (,<'Carthorse') -: 'orchestra' findAnagrams 'cashregister';'Carthorse';'radishes'
)

anagram_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_11  =: monad define
  Description@.1 ('does not detect an anagram if the original word is repeated')
  Order@.1 (11)

  NB. subject    =. 'go'
  NB. candidates =. ,<'goGoGO'
  NB. expected   =. ''
  assert '' -: 'go' findAnagrams ,<'goGoGO'
)

anagram_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_12  =: monad define
  Description@.1 ('anagrams must use all letters exactly once')
  Order@.1 (12)

  NB. subject    =. 'tapper'
  NB. candidates =. ,<'patter'
  NB. expected   =. ''
  assert '' -: 'tapper' findAnagrams ,<'patter'
)

anagram_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_13  =: monad define
  Description@.1 ('words are not anagrams of themselves even if letter case is completely different')
  Order@.1 (13)

  NB. subject    =. 'BANANA'
  NB. candidates =. ,<'banana'
  NB. expected   =. ''
  assert '' -: 'BANANA' findAnagrams ,<'banana'
)

anagram_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_14  =: monad define
  Description@.1 ('words other than themselves can be anagrams')
  Order@.1 (14)

  NB. subject    =. 'LISTEN'
  NB. candidates =. 'LISTEN';'Silent'
  NB. expected   =.  ,<'Silent'
  assert  (,<'Silent') -:  'LISTEN' findAnagrams 'LISTEN';'Silent'
)


anagram_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_15  =: monad define
  Description@.1 ('different characters may have the same bytes')
  Order@.1 (15)

  NB. subject    =. 'a⬂'
  NB. candidates =. '€a'
  NB. expected   =. ''
  assert '' -: 'a⬂' findAnagrams '€a'
)

