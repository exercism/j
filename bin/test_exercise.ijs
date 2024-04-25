#! /opt/j9.5/bin/jconsole

try_error=: 3 : 0
  for_i. y do. 
    test_name      =. > i
    error_expected =. ( 5 }. test_name , '_expect')~
    try.
      0!:100 fputs test_name , (quote'')
    catch.
      errname=. > (<: 13!:11'') { 9!:8''
      if. errname -.@-: error_expected do.
        0 return.
      end.
    end.
  end.
  1 return.
)

main=: monad define
  exercise_dir=. _1 { ARGV
  1!:44 >exercise_dir
  tests=. ('[a-zA-Z0-9[-]*]*[.]ijs'; '.meta/example.ijs') rxrplc 1!:1 <'test.ijs'     NB. Replace load directive for the tests
  0!:0 tests                                                                          NB. load to put the tests in `nl`
  before_all ''                                                                       NB. tests verbs depends on values setted at `before_all`
  tests=. 'test_' nl 3                                                                NB. get defined tests from `nl`
  errors=. ('test_'&,)each (_7&}.)each '_expect*' nl 0

  if. 0-.@-:#errors do.
    'expect_value expect_error'=. (tests e. errors) </. tests
    test_values=. 0!:3 fputs (,&(quote''))every expect_value
    test_errors=. try_error expect_error
    exit -.(test_values *. test_errors)
  else.
    exit -. 0!:3 fputs (,&(quote''))every tests
  end.

)

main''
