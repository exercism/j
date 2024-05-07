require 'strings convert/json web/gethttp'
load 'Generator/toml_parser.ijs'
NB. 1!:44 'Generator'


get_cannonical_data_path=. 'https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/', '/canonical-data.json' ,~ ]

NB. Gets the exercise slug assuming it's the first information from the json
exercise_name=. ({: {~ (<'exercise') i.~ {.)

NB. column where the tests are located at the hihgest level
tests_idx=. 1 , (<'cases') i.~ {.

NB. It produces an array with all tests from the json
NB. it all values containing the tests then spread the boxes of level 2 and finally gets the ones which are tables
get_all_tests=. ((#~ 2 = # every) @: (<S:2) @: ({::~ tests_idx))


tests=:{{
  data     =. dec_json gethttp get_cannonical_data_path f. y
  name     =. exercise_name f. data
  all_tests=. get_all_tests f. data
  excl     =. get_exclude_tests y
  uuids    =. ({: {~ (<'uuid') i.~ {.)every all_tests

  NB. attemps to remove `excl` from `all_tests` using uuid info. 
  NB. if fails because `excl` is empty returns `all_tests`
  name ; (all_tests #~ [: ,@:-. (excl -:"0 ])"0) :: all_tests uuids
}}

0 : 0
load 'test_class.ijs'
param=:(get_all_tests 'leap')

a=:param conew 'testsuite'
)
