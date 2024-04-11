invalid_nucleotide=: 3 : ' ''Invalid nucleotide in strand'' 13!:8 (45)'
nucleotide_counts=: [: +/`invalid_nucleotide @.(0 0 0 0&e.) =/&'ACGT'
