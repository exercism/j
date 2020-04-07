load'hamming.ijs'

test_hamming_empty=: monad define
assert 0=''hamming''
)

test_hamming_aa=: monad define
assert 0=(,:'a')hamming(,:'a')
)

test_hamming_gt=: monad define
assert 1=(,:'g')hamming(,:'t')
)

test_hamming_longer_same=: monad define
assert 0='GGACTGAAATCTG'hamming'GGACTGAAATCTG'
)

test_hamming_longer_diff=: monad define
assert 9='GGACGGATTCTG'hamming'AGGACGGATTCT'
)