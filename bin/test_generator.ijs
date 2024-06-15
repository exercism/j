load 'tools/generator/test_class.ijs'

0 : 0 
  Usage
  jconsole bin/test_generator.ijs absolut-path-to-canonical-data-json
  OR
  jconsole bin/test_generator.ijs slug-on-problem-specs-github

  This script expects that the path `exercise/practice/{slug}` already exists
)

0 : 0 
  unicode characters are printed as `char_number { a.`
  extended integers are not handled properly
)

main=: monad define
  slug=: > _1 { ARGV
  c=: slug conew 'testwriter'
  path=: < 'exercises/practice/', slug , '/test.ijs'
  tests__c 1!:2 path
  exit 0
)


main''
