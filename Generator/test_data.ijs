require 'strings convert/json web/gethttp'
load 'Generator/toml_parser.ijs Generator/test_class.ijs'


github_data_path=. 'https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/', '/canonical-data.json' ,~ ]

NB. column where the tests are located at the hihgest level
tests_idx=. {::~ (1 , (<'cases') i.~ {.)

NB. It produces an array with all tests from the json
NB. it all values containing the tests then spread the boxes of level 2 and finally gets the ones which are tables
get_cases=. $:^:((<'cases') e. {.)each @: (#~ 2 = # every) @: (<S:_1) @: tests_idx
flatten_cases=. ([: ; (<^:(1 -.@-: #@$))each)^:_


format_tests=:{{
  data     =. dec_json gethttp github_data_path f. y
  NB. (fputs ,. data) 1!:2 <'Generator/data_tmp.txt'
  name     =. ({: {~ (<'exercise') i.~ {.) data
  all_tests=. flatten_cases get_cases f. data
  
  (fputs ,. all_tests) 1!:2 <'Generator/temp.txt'
  excl     =. get_exclude_tests y
  uuids    =. ({: {~ (<'uuid') i.~ {.)every all_tests

  NB. attemps to remove `excl` from `all_tests` using uuid info. 
  NB. if fails because `excl` is empty returns `all_tests`
  name ; (all_tests #~ [: ,@:-. (excl -:"0 ])"0) :: all_tests uuids
  smoutput $ each all_tests
}}
