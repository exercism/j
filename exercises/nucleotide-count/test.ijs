load'nucleotide-count.ijs'

test_nuc_cnt1=: monad define
assert 0 0 0 0-:nuc_cnt''
)

test_nuc_cnt2=: monad define
assert 0 0 1 0-:nuc_cnt 1$'G'
)

test_nuc_cnt3=: monad define
assert 0 0 7 0-:nuc_cnt'GGGGGGG'
)

test_nuc_cnt4=: monad define
assert 20 12 17 21-:nuc_cnt'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
)

REP=: nuc_cnt f.