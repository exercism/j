NB. define rebase as a conjunction 
NB. u is the output base
NB. v is the input base
rebase=: {{ [: u&#.^:_1 v&#. }}


NB. defines rebase as a dyad
NB. x is the output base
NB. y is an array of boxes where:
NB.   the first value is the output base
NB.   the second value are the digits
NB. rebase=: [ #.inv ({.  #. }.)@:;@:]

domain_in =: (3 : '''input base must be >= 2''13!:8 (45)')^:(2&>)
domain_out=: (3 : '''output base must be >= 2''13!:8 (45)')^:(2&>)
value     =: (4 : '''all digits must satisfy 0 <= d < input base''13!:8 (45)')^:([: +./ <:)


