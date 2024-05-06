require 'strings convert/json web/gethttp'
1!:44 'Generator'


get_cannonical_data_path=: 'https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/', '/canonical-data.json' ,~ ]
get_data=: gethttp @: get_cannonical_data_path

NB. Gets the exercise slug assuming it's the first information on the json
exercise_name=: {: {~ (<'exercise') i.~ {.

NB. column where the tests are located at the hihgest level
tests_idx=: 1 , (<'cases') i.~ {.

NB. It produces an array with all tests
NB. it all values containing the tests then spread the boxes of level 2 and finally gets the ones which are tables
get_tests=: (#~ 2 = # every) @: (<S:2) @: ({::~ tests_idx) @: dec_json @: get_data



0 : 0
load 'test_class.ijs'
param=:(get_tests 'leap')

a=:param conew 'testsuite'
)


a=: <('abc';'def';'ghi') ,: 15 7 8; 0 64 ; 71 7 2

({: {~ (<'abc') i.~ {.)&> a
