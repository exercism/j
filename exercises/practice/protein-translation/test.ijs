load 'protein-translation.ijs'


protein_translation_test_01_ignore=: 0
test_protein_translation_test_01  =: monad define
  Description=: 'Empty RNA sequence results in no proteins'

  NB. strand   =. ''
  NB. expected =. ''
  assert '' -: proteins ''
)

protein_translation_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_02  =: monad define
  Description=: 'Methionine RNA sequence'

  NB. strand   =. 'AUG'
  NB. expected =. (,<'Methionine')
  assert (,<'Methionine') = proteins 'AUG'
)

protein_translation_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_03  =: monad define
  Description=: 'Phenylalanine RNA sequence 1'

  NB. strand   =. 'UUU'
  NB. expected =. (,<'Phenylalanine')
  assert (,<'Phenylalanine') = proteins 'UUU'
)

protein_translation_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_04  =: monad define
  Description=: 'Phenylalanine RNA sequence 2'

  NB. strand   =. 'UUC'
  NB. expected =. (,<'Phenylalanine')
  assert (,<'Phenylalanine') = proteins 'UUC'
)

protein_translation_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_05  =: monad define
  Description=: 'Leucine RNA sequence 1'

  NB. strand   =. 'UUA'
  NB. expected =. (,<'Leucine')
  assert (,<'Leucine') = proteins 'UUA'
)

protein_translation_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_06  =: monad define
  Description=: 'Leucine RNA sequence 2'

  NB. strand   =. 'UUG'
  NB. expected =. (,<'Leucine')
  assert (,<'Leucine') = proteins 'UUG'
)

protein_translation_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_07  =: monad define
  Description=: 'Serine RNA sequence 1'

  NB. strand   =. 'UCU'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCU'
)

protein_translation_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_08  =: monad define
  Description=: 'Serine RNA sequence 2'

  NB. strand   =. 'UCC'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCC'
)

protein_translation_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_09  =: monad define
  Description=: 'Serine RNA sequence 3'

  NB. strand   =. 'UCA'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCA'
)

protein_translation_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_10  =: monad define
  Description=: 'Serine RNA sequence 4'

  NB. strand   =. 'UCG'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCG'
)

protein_translation_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_11  =: monad define
  Description=: 'Tyrosine RNA sequence 1'

  NB. strand   =. 'UAU'
  NB. expected =. (,<'Tyrosine')
  assert (,<'Tyrosine') = proteins 'UAU'
)

protein_translation_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_12  =: monad define
  Description=: 'Tyrosine RNA sequence 2'

  NB. strand   =. 'UAC'
  NB. expected =. (,<'Tyrosine')
  assert (,<'Tyrosine') = proteins 'UAC'
)

protein_translation_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_13  =: monad define
  Description=: 'Cysteine RNA sequence 1'

  NB. strand   =. 'UGU'
  NB. expected =. (,<'Cysteine')
  assert (,<'Cysteine') = proteins 'UGU'
)

protein_translation_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_14  =: monad define
  Description=: 'Cysteine RNA sequence 2'

  NB. strand   =. 'UGC'
  NB. expected =. (,<'Cysteine')
  assert (,<'Cysteine') = proteins 'UGC'
)

protein_translation_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_15  =: monad define
  Description=: 'Tryptophan RNA sequence'

  NB. strand   =. 'UGG'
  NB. expected =. (,<'Tryptophan')
  assert (,<'Tryptophan') = proteins 'UGG'
)

protein_translation_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_16  =: monad define
  Description=: 'STOP codon RNA sequence 1'

  NB. strand   =. 'UAA'
  NB. expected =. ''
  assert '' -: proteins 'UAA'
)

protein_translation_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_17  =: monad define
  Description=: 'STOP codon RNA sequence 2'

  NB. strand   =. 'UAG'
  NB. expected =. ''
  assert '' -: proteins 'UAG'
)

protein_translation_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_18  =: monad define
  Description=: 'STOP codon RNA sequence 3'

  NB. strand   =. 'UGA'
  NB. expected =. ''
  assert '' -: proteins 'UGA'
)

protein_translation_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_19  =: monad define
  Description=: 'Sequence of two protein codons translates into proteins'

  NB. strand   =. 'UUUUUU'
  NB. expected =. 'Phenylalanine';'Phenylalanine'
  assert ('Phenylalanine';'Phenylalanine') -: proteins 'UUUUUU'
)

protein_translation_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_20  =: monad define
  Description=: 'Sequence of two different protein codons translates into proteins'

  NB. strand   =. 'UUAUUG'
  NB. expected =. 'Leucine';'Leucine'
  assert ('Leucine';'Leucine') -: proteins 'UUAUUG'
)

protein_translation_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_21  =: monad define
  Description=: 'Translate RNA strand into correct protein list'

  NB. strand   =. 'AUGUUUUGG'
  NB. expected =. 'Methionine';'Phenylalanine';'Tryptophan'
  assert ('Methionine';'Phenylalanine';'Tryptophan') -: proteins 'AUGUUUUGG'
)

protein_translation_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_22  =: monad define
  Description=: 'Translation stops if STOP codon at beginning of sequence'

  NB. strand   =. 'UAGUGG'
  NB. expected =. ''
  assert '' -: proteins 'UAGUGG'
)

protein_translation_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_23  =: monad define
  Description=: 'Translation stops if STOP codon at end of two-codon sequence'

  NB. strand   =. 'UGGUAG'
  NB. expected =. ,<'Tryptophan'
   assert (,<'Tryptophan') = proteins 'UGGUAG'
)

protein_translation_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_24  =: monad define
  Description=: 'Translation stops if STOP codon at end of three-codon sequence'

  NB. strand   =. 'AUGUUUUAA'
  NB. expected =. 'Methionine';'Phenylalanine'
  assert ('Methionine';'Phenylalanine') -: proteins 'AUGUUUUAA'
)

protein_translation_test_25_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_25  =: monad define
  Description=: 'Translation stops if STOP codon in middle of three-codon sequence'

  NB. strand   =. 'UGGUAGUGG'
  NB. expected =. ,<'Tryptophan'
   assert (,<'Tryptophan') = proteins 'UGGUAGUGG'
)

protein_translation_test_26_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_26  =: monad define
  Description=: 'Translation stops if STOP codon in middle of six-codon sequence'

  NB. strand   =. 'UGGUGUUAUUAAUGGUUU'
  NB. expected =. 'Tryptophan';'Cysteine';'Tyrosine'
  assert ('Tryptophan';'Cysteine';'Tyrosine') -: proteins 'UGGUGUUAUUAAUGGUUU'
)

protein_translation_test_27_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_327  =: monad define
  Description=: 'Incomplete RNA sequence can translate if valid until a STOP codon'

  NB. strand   =. 'UUCUUCUAAUGGU'
  NB. expected =. 'Phenylalanine';'Phenylalanine'
  assert ('Phenylalanine';'Phenylalanine') -: proteins 'UUCUUCUAAUGGU'
)

