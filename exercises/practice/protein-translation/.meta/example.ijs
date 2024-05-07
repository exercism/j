CODONS      =: ;: each 'AUG';'UUU UUC';'UUA UUG';'UCU UCC UCA UCG';'UAU UAC';'UGU UGC';'UGG';'UAA UAG UGA'
PROTEINS    =: ;: 'Methionine Phenylalanine Leucine Serine Tyrosine Cysteine Tryptophan STOP'

stop_sign   =: (#~ # {. 1 #~ i.&1@:=&(<'STOP'))
find_codons =: [: , {{
  res=. ''
  for_i. CODONS do.
    res=. res, y e. > i 
  end.
  I. res
}}"0

proteins=: stop_sign @: {&PROTEINS @: find_codons @: (_3&(<\))
