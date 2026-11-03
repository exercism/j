order=: ('  Order.*' ; '')&rxrplc
rest=: ('''\)' ; '''') rxrplc ('@\.1\s*\(' ; '=: ') rxrplc ]

ba=:{{)n

before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)

}}

bar=: (ba;'')&stringreplace 

main=:{{
  paths=. jpath each 2}. ARGV
  echo ,.paths
  {{ (<y) 1!:2~ rest order bar freads y}}each paths
}}

main ''
