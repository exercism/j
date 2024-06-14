load 'diamond.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


diamond_test_01_ignore=: 0
test_diamond_test_01  =: monad define
  Description@.1 ('Degenerate case with a single ''A'' row')
  Order@.1 (1)

  NB. letter=. 'A'
  NB. expected=. 1 1$'A'
  assert (1 1$'A') =&> rows 'A'
)

diamond_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_diamond_test_02  =: monad define
  Description@.1 ('Degenerate case with no row containing 3 distinct groups of spaces')
  Order@.1 (2)

  NB. letter=. 'B'
  NB. expected=. 3 3$' A B B A '
  assert (3 3$' A B B A ') =&> rows 'B'
)

diamond_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_diamond_test_03  =: monad define
  Description@.1 ('Smallest non-degenerate case with odd diamond side length')
  Order@.1 (3)

  NB. letter=. 'C'
  NB. expected=. 5 5$'  A   B B C   C B B   A  '
  assert (5 5$'  A   B B C   C B B   A  ') =&> rows 'C'
)

diamond_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_diamond_test_04  =: monad define
  Description@.1 ('Smallest non-degenerate case with even diamond side length')
  Order@.1 (4)

  NB. letter=. 'D'
  NB. expected=. 7 7$'   A     B B   C   C D     D C   C   B B     A   '
  assert (7 7$'   A     B B   C   C D     D C   C   B B     A   ') =&> rows 'D'
)

diamond_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_diamond_test_05  =: monad define
  Description@.1 ('Largest possible diamond')
  Order@.1 (5)

  NB. letter=. 'Z'
  NB. expected=. 51 51$'                         A                                                 B B                                               C   C                                             D     D                                           E       E                                         F         F                                       G           G                                     H             H                                   I               I                                 J                 J                               K                   K                             L                     L                           M                       M                         N                         N                       O                           O                     P                             P                   Q                               Q                 R                                 R               S                                   S             T                                     T           U                                       U         V                                         V       W                                           W     X                                             X   Y                                               Y Z                                                 Z Y                                               Y   X                                             X     W                                           W       V                                         V         U                                       U           T                                     T             S                                   S               R                                 R                 Q                               Q                   P                             P                     O                           O                       N                         N                         M                       M                           L                     L                             K                   K                               J                 J                                 I               I                                   H             H                                     G           G                                       F         F                                         E       E                                           D     D                                             C   C                                               B B                                                 A                         '
  assert (51 51$'                         A                                                 B B                                               C   C                                             D     D                                           E       E                                         F         F                                       G           G                                     H             H                                   I               I                                 J                 J                               K                   K                             L                     L                           M                       M                         N                         N                       O                           O                     P                             P                   Q                               Q                 R                                 R               S                                   S             T                                     T           U                                       U         V                                         V       W                                           W     X                                             X   Y                                               Y Z                                                 Z Y                                               Y   X                                             X     W                                           W       V                                         V         U                                       U           T                                     T             S                                   S               R                                 R                 Q                               Q                   P                             P                     O                           O                       N                         N                         M                       M                           L                     L                             K                   K                               J                 J                                 I               I                                   H             H                                     G           G                                       F         F                                         E       E                                           D     D                                             C   C                                               B B                                                 A                         ') =&> rows 'Z'
)

