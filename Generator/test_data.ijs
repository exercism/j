require 'strings convert/json web/gethttp'
load 'Generator/toml_parser.ijs'

ignore_flag=:{{ y, '_test_', x ,'_ignore=: ', ('1 NB. Change this value to 0 to run this test'"_)`('0'"_)@.(0 = x) }}
test_name=: {{ 'test_',y,'_test_',x,'  =: monad define' }}


format_tests=:{{
  github_data_path=. 'https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/', '/canonical-data.json' ,~ ]
  NB. column where the tests are located at the hihgest level
  tests_idx=. {::~ (1 , (<'cases') i.~ {.)

  NB. It produces an array with all tests from the json
  NB. it all values containing the tests then spread the boxes of level 2 and finally gets the ones which are tables
  get_cases=. $:^:((<'cases') e. {.)each @: (#~ 2 = # every) @: (<S:_1) @: tests_idx
  flatten_cases=. ([: ; (<^:(1 -.@-: #@$))each)^:_
  data     =. dec_json gethttp github_data_path y

  name     =. ;@({: {~ (<'exercise') i.~ {.) data
  all_tests=. flatten_cases get_cases data
  
  (fputs ,. all_tests) 1!:2 <'Generator/temp.txt'
  excl     =. get_exclude_tests y
  uuids    =. ({: {~ (<'uuid') i.~ {.)every all_tests

  NB. attemps to remove `excl` from `all_tests` using uuid info. 
  NB. if fails because `excl` is empty returns `all_tests`
  tests=. (all_tests #~ [: ,@:-. (excl -:"0 ])"0) :: all_tests uuids
  name ; tests
}}
 