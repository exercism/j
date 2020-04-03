load'rna-transcription.ijs'

test_rna_empty=: monad define
assert ''-:rna''
)

test_rna_GC=: monad define
assert 'C'-:rna'G'
)

test_rna_CG=: monad define
assert 'G'-:rna'C'
)

test_rna_AT=: monad define
assert 'A'-:rna'T'
)

test_rna_AU=: monad define
assert 'U'-:rna'A'
)

test_rna_strand=: monad define
assert 'UGCACCAGAAUU'-:rna'ACGTGGTCTTAA'
)


REP=: rna f.