require 'strings convert/json web/gethttp'
load 'tools/generator/toml_parser.ijs'

format_tests=: monad define
  github_data_path=. 'https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/', '/canonical-data.json' ,~ ]

  NB. get the column where the tests are located at the hihgest level
  tests_idx=. {::~ (1 , (<'cases') i.~ {.)

  NB. It produces an array with all tests from the json
  NB. it all values containing the tests then spread the boxes of level 2 and finally gets the ones which are tables
  get_cases     =. $:^:((<'cases') e. {.)each @: (#~ 2 = # every) @: (<S:_1) @: tests_idx
  flatten_cases =. ([: ; (<^:(1 -.@-: #@$))each)^:_
    
  try.
    data=. dec_json 1!:1 < y
  catch.
    data=. dec_json gethttp github_data_path y
  end.

  name      =. ;@({: {~ (<'exercise') i.~ {.) data
  all_tests =. flatten_cases get_cases data
  
  excl      =. get_exclude_tests y
  uuids     =. ({: {~ (<'uuid') i.~ {.)every all_tests

  NB. attemps to remove `excl` from `all_tests` using uuid info. 
  NB. if fails because `excl` is empty returns `all_tests`
  tests=. (all_tests #~ [: ,@:-. (excl -:"0 ])"0) :: all_tests uuids
  name ; tests
)
