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

  subject    =. 'diaper'
  candidates =. 'hello' ; 'world' ; 'zombies' ; 'pants'
  expected   =. ''
  assert expected -: subject findAnagrams candidates
)

anagram_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_02  =: monad define
  Description@.1 ('detects two anagrams')
  Order@.1 (2)

  subject    =. 'solemn'
  candidates =. 'lemons' ; 'cherry' ; 'melons'
  expected   =. 'lemons' ; 'melons'
  assert expected -: subject findAnagrams candidates
)

anagram_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_03  =: monad define
  Description@.1 ('does not detect anagram subsets')
  Order@.1 (3)

  subject    =. 'good'
  candidates =. 'dog' ; 'goody'
  expected   =. ''
  assert expected -: subject findAnagrams candidates
)

anagram_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_04  =: monad define
  Description@.1 ('detects anagram')
  Order@.1 (4)

  subject    =. 'listen'
  candidates =. 'enlists' ; 'google' ; 'inlets' ; 'banana'
  expected   =. ,<'inlets'
  assert expected -: subject findAnagrams candidates
)

anagram_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_05  =: monad define
  Description@.1 ('detects three anagrams')
  Order@.1 (5)

  subject    =. 'allergy'
  candidates =. 'gallery' ; 'ballerina' ; 'regally' ; 'clergy' ; 'largely' ; 'leading'
  expected   =. 'gallery' ; 'regally' ; 'largely'
  assert expected -: subject findAnagrams candidates
)

anagram_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_06  =: monad define
  Description@.1 ('detects multiple anagrams with different case')
  Order@.1 (6)

  subject    =. 'nose'
  candidates =. 'Eons' ; 'ONES'
  expected   =. 'Eons' ; 'ONES'
  assert expected -: subject findAnagrams candidates
)

anagram_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_07  =: monad define
  Description@.1 ('does not detect non-anagrams with identical checksum')
  Order@.1 (7)

  subject    =. 'mass'
  candidates =. ,<'last'
  expected   =. ''
  assert expected -: subject findAnagrams candidates
)

anagram_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_08  =: monad define
  Description@.1 ('detects anagrams case-insensitively')
  Order@.1 (8)

  subject    =. 'Orchestra'
  candidates =. 'cashregister' ; 'Carthorse' ; 'radishes'
  expected   =.  ,<'Carthorse'
  assert expected -: subject findAnagrams candidates
)

anagram_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_09  =: monad define
  Description@.1 ('detects anagrams using case-insensitive subject')
  Order@.1 (9)

  subject    =. 'Orchestra'
  candidates =. 'cashregister' ; 'carthorse' ; 'radishes'
  expected   =.  ,<'carthorse'
  assert expected -: subject findAnagrams candidates
)

anagram_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_10  =: monad define
  Description@.1 ('detects anagrams using case-insensitive possible matches')
  Order@.1 (10)

  subject    =. 'orchestra'
  candidates =. 'cashregister' ; 'Carthorse' ; 'radishes'
  expected   =.  ,<'Carthorse'
  assert expected -: subject findAnagrams candidates
)

anagram_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_11  =: monad define
  Description@.1 ('does not detect an anagram if the original word is repeated')
  Order@.1 (11)

  subject    =. 'go'
  candidates =. ,<'goGoGO'
  expected   =. ''
  assert expected -: subject findAnagrams candidates
)

anagram_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_12  =: monad define
  Description@.1 ('anagrams must use all letters exactly once')
  Order@.1 (12)

  subject    =. 'tapper'
  candidates =. ,<'patter'
  expected   =. ''
  assert expected -: subject findAnagrams candidates
)

anagram_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_13  =: monad define
  Description@.1 ('words are not anagrams of themselves even if letter case is completely different')
  Order@.1 (13)

  subject    =. 'BANANA'
  candidates =. ,<'banana'
  expected   =. ''
  assert expected -: subject findAnagrams candidates
)

anagram_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_14  =: monad define
  Description@.1 ('words other than themselves can be anagrams')
  Order@.1 (14)

  subject    =. 'LISTEN'
  candidates =. 'LISTEN' ; 'Silent'
  expected   =.  ,<'Silent'
  assert expected -: subject findAnagrams candidates
)


anagram_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_anagram_test_15  =: monad define
  Description@.1 ('different characters may have the same bytes')
  Order@.1 (15)

  subject    =. 'a⬂'
  candidates =. '€a'
  expected   =. ''
  assert expected -: subject findAnagrams candidates
)

