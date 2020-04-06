load'nucleotide-count.ijs'

test_ntc1=: monad define
assert 0 0 0 0-:ntc''
)

test_ntc2=: monad define
assert 0 0 1 0-:ntc ,:'G'
)

test_ntc3=: monad define
assert 0 0 7 0-:ntc'GGGGGGG'
)

test_ntc4=: monad define
assert 20 12 17 21-:ntc'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
)

REP=: ntc f.