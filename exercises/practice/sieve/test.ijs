load 'sieve.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


sieve_test_01_ignore=: 0
test_sieve_test_01  =: monad define
  Description@.1 ('no primes under two')
  Order@.1 (1)

  NB. limit=. 1
  NB. expected=. ''
  assert '' = primes 1
)

sieve_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_sieve_test_02  =: monad define
  Description@.1 ('find first prime')
  Order@.1 (2)

  NB. limit=. 2
  NB. expected=. ,2
  assert (,2) = primes 2
)

sieve_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_sieve_test_03  =: monad define
  Description@.1 ('find primes up to 10')
  Order@.1 (3)

  NB. limit=. 10
  NB. expected=. 2 3 5 7
  assert 2 3 5 7 = primes 10
)

sieve_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_sieve_test_04  =: monad define
  Description@.1 ('limit is prime')
  Order@.1 (4)

  NB. limit=. 13
  NB. expected=. 2 3 5 7 11 13
  assert 2 3 5 7 11 13 = primes 13
)

sieve_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_sieve_test_05  =: monad define
  Description@.1 ('find primes up to 1000')
  Order@.1 (5)

  NB. limit=. 1000
  NB. expected=. 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 257 263 269 271 277 281 283 293 307 311 313 317 331 337 347 349 353 359 367 373 379 383 389 397 401 409 419 421 431 433 439 443 449 457 461 463 467 479 487 491 499 503 509 521 523 541 547 557 563 569 571 577 587 593 599 601 607 613 617 619 631 641 643 647 653 659 661 673 677 683 691 701 709 719 727 733 739 743 751 757 761 769 773 787 797 809 811 821 823 827 829 839 853 857 859 863 877 881 883 887 907 911 919 929 937 941 947 953 967 971 977 983 991 997
  assert 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113 127 131 137 139 149 151 157 163 167 173 179 181 191 193 197 199 211 223 227 229 233 239 241 251 257 263 269 271 277 281 283 293 307 311 313 317 331 337 347 349 353 359 367 373 379 383 389 397 401 409 419 421 431 433 439 443 449 457 461 463 467 479 487 491 499 503 509 521 523 541 547 557 563 569 571 577 587 593 599 601 607 613 617 619 631 641 643 647 653 659 661 673 677 683 691 701 709 719 727 733 739 743 751 757 761 769 773 787 797 809 811 821 823 827 829 839 853 857 859 863 877 881 883 887 907 911 919 929 937 941 947 953 967 971 977 983 991 997 = primes 1000
)

