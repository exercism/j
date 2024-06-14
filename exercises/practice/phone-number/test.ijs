load 'phone-number.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


phone_number_test_01_ignore=: 0
test_phone_number_test_01  =: monad define
  Description@.1 ('cleans the number')
  Order@.1 (1)

  NB. phrase=. '(223) 456-7890'
  NB. expected=. '2234567890'
  assert '2234567890' -: clean '(223) 456-7890'
)

phone_number_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_phone_number_test_02  =: monad define
  Description@.1 ('cleans numbers with dots')
  Order@.1 (2)

  NB. phrase=. '223.456.7890'
  NB. expected=. '2234567890'
  assert '2234567890' -: clean '223.456.7890'
)

phone_number_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_phone_number_test_03  =: monad define
  Description@.1 ('cleans numbers with multiple spaces')
  Order@.1 (3)

  NB. phrase=. '223 456   7890   '
  NB. expected=. '2234567890'
  assert '2234567890' -: clean '223 456   7890   '
)

phone_number_test_05_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_05_expect=: 'domain error'
test_phone_number_test_05  =: monad define
  Description@.1 ('invalid when 9 digits')
  Order@.1 (5)

  NB. phrase=. '123456789'
  NB. expected=. {{'must not be fewer than 10 digits' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '123456789'
)

phone_number_test_06_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_06_expect=: 'domain error'
test_phone_number_test_06  =: monad define
  Description@.1 ('invalid when 11 digits does not start with a 1')
  Order@.1 (6)

  NB. phrase=. '22234567890'
  NB. expected=. {{'11 digits must start with 1' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '22234567890'
)

phone_number_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_phone_number_test_07  =: monad define
  Description@.1 ('valid when 11 digits and starting with 1')
  Order@.1 (7)

  NB. phrase=. '12234567890'
  NB. expected=. '2234567890'
  assert '2234567890' -: clean '12234567890'
)

phone_number_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_phone_number_test_08  =: monad define
  Description@.1 ('valid when 11 digits and starting with 1 even with punctuation')
  Order@.1 (8)

  NB. phrase=. '+1 (223) 456-7890'
  NB. expected=. '2234567890'
  assert '2234567890' -: clean '+1 (223) 456-7890'
)

phone_number_test_10_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_10_expect=: 'domain error'
test_phone_number_test_10  =: monad define
  Description@.1 ('invalid when more than 11 digits')
  Order@.1 (10)

  NB. phrase=. '321234567890'
  NB. expected=. {{'must not be greater than 11 digits' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '321234567890'
)

phone_number_test_12_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_12_expect=: 'domain error'
test_phone_number_test_12  =: monad define
  Description@.1 ('invalid with letters')
  Order@.1 (12)

  NB. phrase=. '523-abc-7890'
  NB. expected=. {{'letters not permitted' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '523-abc-7890'
)

phone_number_test_14_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_14_expect=: 'domain error'
test_phone_number_test_14  =: monad define
  Description@.1 ('invalid with punctuations')
  Order@.1 (14)

  NB. phrase=. '523-@:!-7890'
  NB. expected=. {{'punctuations not permitted' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '523-@:!-7890'
)

phone_number_test_15_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_15_expect=: 'domain error'
test_phone_number_test_15  =: monad define
  Description@.1 ('invalid if area code starts with 0')
  Order@.1 (15)

  NB. phrase=. '(023) 456-7890'
  NB. expected=. {{'area code cannot start with zero' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '(023) 456-7890'
)

phone_number_test_16_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_16_expect=: 'domain error'
test_phone_number_test_16  =: monad define
  Description@.1 ('invalid if area code starts with 1')
  Order@.1 (16)

  NB. phrase=. '(123) 456-7890'
  NB. expected=. {{'area code cannot start with one' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '(123) 456-7890'
)

phone_number_test_17_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_17_expect=: 'domain error'
test_phone_number_test_17  =: monad define
  Description@.1 ('invalid if exchange code starts with 0')
  Order@.1 (17)

  NB. phrase=. '(223) 056-7890'
  NB. expected=. {{'exchange code cannot start with zero' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '(223) 056-7890'
)

phone_number_test_18_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_18_expect=: 'domain error'
test_phone_number_test_18  =: monad define
  Description@.1 ('invalid if exchange code starts with 1')
  Order@.1 (18)

  NB. phrase=. '(223) 156-7890'
  NB. expected=. {{'exchange code cannot start with one' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '(223) 156-7890'
)

phone_number_test_19_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_19_expect=: 'domain error'
test_phone_number_test_19  =: monad define
  Description@.1 ('invalid if area code starts with 0 on valid 11-digit number')
  Order@.1 (19)

  NB. phrase=. '1 (023) 456-7890'
  NB. expected=. {{'area code cannot start with zero' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '1 (023) 456-7890'
)

phone_number_test_20_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_20_expect=: 'domain error'
test_phone_number_test_20  =: monad define
  Description@.1 ('invalid if area code starts with 1 on valid 11-digit number')
  Order@.1 (20)

  NB. phrase=. '1 (123) 456-7890'
  NB. expected=. {{'area code cannot start with one' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '1 (123) 456-7890'
)

phone_number_test_21_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_21_expect=: 'domain error'
test_phone_number_test_21  =: monad define
  Description@.1 ('invalid if exchange code starts with 0 on valid 11-digit number')
  Order@.1 (21)

  NB. phrase=. '1 (223) 056-7890'
  NB. expected=. {{'exchange code cannot start with zero' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '1 (223) 056-7890'
)

phone_number_test_22_ignore=: 1 NB. Change this value to 0 to run this test
phone_number_test_22_expect=: 'domain error'
test_phone_number_test_22  =: monad define
  Description@.1 ('invalid if exchange code starts with 1 on valid 11-digit number')
  Order@.1 (22)

  NB. phrase=. '1 (223) 156-7890'
  NB. expected=. {{'exchange code cannot start with one' 13!:8 (45)}}^:(0 -.@-: ])@#
  assert 0 -: # clean '1 (223) 156-7890'
)

