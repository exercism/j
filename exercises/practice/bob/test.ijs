load 'bob.ijs'


bob_test_01_ignore=: 0
test_bob_test_01  =: monad define
  Description=: 'stating something'


  NB. heyBob=. 'Tom-ay-to, tom-aaaah-to.'
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response 'Tom-ay-to, tom-aaaah-to.'
)

bob_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_02  =: monad define
  Description=: 'shouting'


  NB. heyBob=. 'WATCH OUT!'
  NB. expected=. 'Whoa, chill out!'
  assert 'Whoa, chill out!' =&> response 'WATCH OUT!'
)

bob_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_03  =: monad define
  Description=: 'shouting gibberish'


  NB. heyBob=. 'FCECDFCAAB'
  NB. expected=. 'Whoa, chill out!'
  assert 'Whoa, chill out!' =&> response 'FCECDFCAAB'
)

bob_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_04  =: monad define
  Description=: 'asking a question'


  NB. heyBob=. 'Does this cryogenic chamber make me look fat?'
  NB. expected=. 'Sure.'
  assert 'Sure.' =&> response 'Does this cryogenic chamber make me look fat?'
)

bob_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_05  =: monad define
  Description=: 'asking a numeric question'


  NB. heyBob=. 'You are, what, like 15?'
  NB. expected=. 'Sure.'
  assert 'Sure.' =&> response 'You are, what, like 15?'
)

bob_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_06  =: monad define
  Description=: 'asking gibberish'


  NB. heyBob=. 'fffbbcbeab?'
  NB. expected=. 'Sure.'
  assert 'Sure.' =&> response 'fffbbcbeab?'
)

bob_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_07  =: monad define
  Description=: 'talking forcefully'


  NB. heyBob=. 'Hi there!'
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response 'Hi there!'
)

bob_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_08  =: monad define
  Description=: 'using acronyms in regular speech'


  NB. heyBob=. 'It's OK if you don't want to go work for NASA.'
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response 'It''s OK if you don''t want to go work for NASA.'
)

bob_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_09  =: monad define
  Description=: 'forceful question'


  NB. heyBob=. 'WHAT'S GOING ON?'
  NB. expected=. 'Calm down, I know what I'm doing!'
  assert 'Calm down, I know what I''m doing!' =&> response 'WHAT''S GOING ON?'
)

bob_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_10  =: monad define
  Description=: 'shouting numbers'


  NB. heyBob=. '1, 2, 3 GO!'
  NB. expected=. 'Whoa, chill out!'
  assert 'Whoa, chill out!' =&> response '1, 2, 3 GO!'
)

bob_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_11  =: monad define
  Description=: 'no letters'


  NB. heyBob=. '1, 2, 3'
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response '1, 2, 3'
)

bob_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_12  =: monad define
  Description=: 'question with no letters'


  NB. heyBob=. '4?'
  NB. expected=. 'Sure.'
  assert 'Sure.' =&> response '4?'
)

bob_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_13  =: monad define
  Description=: 'shouting with special characters'


  NB. heyBob=. 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
  NB. expected=. 'Whoa, chill out!'
  assert 'Whoa, chill out!' =&> response 'ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!'
)

bob_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_14  =: monad define
  Description=: 'shouting with no exclamation mark'


  NB. heyBob=. 'I HATE THE DENTIST'
  NB. expected=. 'Whoa, chill out!'
  assert 'Whoa, chill out!' =&> response 'I HATE THE DENTIST'
)

bob_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_15  =: monad define
  Description=: 'statement containing question mark'


  NB. heyBob=. 'Ending with ? means a question.'
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response 'Ending with ? means a question.'
)

bob_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_16  =: monad define
  Description=: 'non-letters with question'


  NB. heyBob=. ':) ?'
  NB. expected=. 'Sure.'
  assert 'Sure.' =&> response ':) ?'
)

bob_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_17  =: monad define
  Description=: 'prattling on'


  NB. heyBob=. 'Wait! Hang on. Are you going to be OK?'
  NB. expected=. 'Sure.'
  assert 'Sure.' =&> response 'Wait! Hang on. Are you going to be OK?'
)

bob_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_18  =: monad define
  Description=: 'silence'


  NB. heyBob=. ''
  NB. expected=. 'Fine. Be that way!'
  assert 'Fine. Be that way!' =&> response ''
)

bob_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_19  =: monad define
  Description=: 'prolonged silence'


  NB. heyBob=. '          '
  NB. expected=. 'Fine. Be that way!'
  assert 'Fine. Be that way!' =&> response '          '
)

bob_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_20  =: monad define
  Description=: 'alternate silence'


  NB. heyBob=. '										'
  NB. expected=. 'Fine. Be that way!'
  assert 'Fine. Be that way!' =&> response '										'
)

bob_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_21  =: monad define
  Description=: 'multiple line question'


  NB. heyBob=. 0 : 0
NB. Does this cryogenic chamber make me look fat?
NB. No.
NB.)
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response {{)n
Does this cryogenic chamber make me look fat?
No.
}}
)

bob_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_22  =: monad define
  Description=: 'starting with whitespace'


  NB. heyBob=. '         hmmmmmmm...'
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response '         hmmmmmmm...'
)

bob_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_23  =: monad define
  Description=: 'ending with whitespace'


  NB. heyBob=. 'Okay if like my  spacebar  quite a bit?   '
  NB. expected=. 'Sure.'
  assert 'Sure.' =&> response 'Okay if like my  spacebar  quite a bit?   '
)

bob_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_24  =: monad define
  Description=: 'other whitespace'


  NB. heyBob=. 0 : 0
NB.
NB.  	
NB.)
  NB. expected=. 'Fine. Be that way!'
  assert 'Fine. Be that way!' =&> response {{)n

 	
}}
)

bob_test_25_ignore=: 1 NB. Change this value to 0 to run this test
test_bob_test_25  =: monad define
  Description=: 'non-question ending with whitespace'


  NB. heyBob=. 'This is a statement ending with whitespace      '
  NB. expected=. 'Whatever.'
  assert 'Whatever.' =&> response 'This is a statement ending with whitespace      '
)

