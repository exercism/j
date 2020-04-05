load'nucleotide-count.ijs'

test_nc1=: monad define
assert 0 0 0 0-:nc''
)

test_nc2=: monad define
assert 0 0 1 0-:nc ,:'G'
)

test_nc3=: monad define
assert 0 0 7 0-:nc'GGGGGGG'
)

test_nc4=: monad define
assert 20 12 17 21-:nc'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
)

REP=: nc f.