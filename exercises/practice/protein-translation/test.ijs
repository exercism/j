load 'protein-translation.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


protein_translation_test_01_ignore=: 0
test_protein_translation_test_01  =: monad define
  Description@.1 ('Empty RNA sequence results in no proteins')
  Order@.1 (1)

  NB. strand   =. ''
  NB. expected =. ''
  assert '' -: proteins ''
)

protein_translation_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_02  =: monad define
  Description@.1 ('Methionine RNA sequence')
  Order@.1 (2)

  NB. strand   =. 'AUG'
  NB. expected =. (,<'Methionine')
  assert (,<'Methionine') = proteins 'AUG'
)

protein_translation_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_03  =: monad define
  Description@.1 ('Phenylalanine RNA sequence 1')
  Order@.1 (3)

  NB. strand   =. 'UUU'
  NB. expected =. (,<'Phenylalanine')
  assert (,<'Phenylalanine') = proteins 'UUU'
)

protein_translation_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_04  =: monad define
  Description@.1 ('Phenylalanine RNA sequence 2')
  Order@.1 (4)

  NB. strand   =. 'UUC'
  NB. expected =. (,<'Phenylalanine')
  assert (,<'Phenylalanine') = proteins 'UUC'
)

protein_translation_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_05  =: monad define
  Description@.1 ('Leucine RNA sequence 1')
  Order@.1 (5)

  NB. strand   =. 'UUA'
  NB. expected =. (,<'Leucine')
  assert (,<'Leucine') = proteins 'UUA'
)

protein_translation_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_06  =: monad define
  Description@.1 ('Leucine RNA sequence 2')
  Order@.1 (6)

  NB. strand   =. 'UUG'
  NB. expected =. (,<'Leucine')
  assert (,<'Leucine') = proteins 'UUG'
)

protein_translation_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_07  =: monad define
  Description@.1 ('Serine RNA sequence 1')
  Order@.1 (7)

  NB. strand   =. 'UCU'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCU'
)

protein_translation_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_08  =: monad define
  Description@.1 ('Serine RNA sequence 2')
  Order@.1 (8)

  NB. strand   =. 'UCC'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCC'
)

protein_translation_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_09  =: monad define
  Description@.1 ('Serine RNA sequence 3')
  Order@.1 (9)

  NB. strand   =. 'UCA'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCA'
)

protein_translation_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_10  =: monad define
  Description@.1 ('Serine RNA sequence 4')
  Order@.1 (10)

  NB. strand   =. 'UCG'
  NB. expected =. (,<'Serine')
  assert (,<'Serine') = proteins 'UCG'
)

protein_translation_test_11_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_11  =: monad define
  Description@.1 ('Tyrosine RNA sequence 1')
  Order@.1 (11)

  NB. strand   =. 'UAU'
  NB. expected =. (,<'Tyrosine')
  assert (,<'Tyrosine') = proteins 'UAU'
)

protein_translation_test_12_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_12  =: monad define
  Description@.1 ('Tyrosine RNA sequence 2')
  Order@.1 (12)

  NB. strand   =. 'UAC'
  NB. expected =. (,<'Tyrosine')
  assert (,<'Tyrosine') = proteins 'UAC'
)

protein_translation_test_13_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_13  =: monad define
  Description@.1 ('Cysteine RNA sequence 1')
  Order@.1 (13)

  NB. strand   =. 'UGU'
  NB. expected =. (,<'Cysteine')
  assert (,<'Cysteine') = proteins 'UGU'
)

protein_translation_test_14_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_14  =: monad define
  Description@.1 ('Cysteine RNA sequence 2')
  Order@.1 (14)

  NB. strand   =. 'UGC'
  NB. expected =. (,<'Cysteine')
  assert (,<'Cysteine') = proteins 'UGC'
)

protein_translation_test_15_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_15  =: monad define
  Description@.1 ('Tryptophan RNA sequence')
  Order@.1 (15)

  NB. strand   =. 'UGG'
  NB. expected =. (,<'Tryptophan')
  assert (,<'Tryptophan') = proteins 'UGG'
)

protein_translation_test_16_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_16  =: monad define
  Description@.1 ('STOP codon RNA sequence 1')
  Order@.1 (16)

  NB. strand   =. 'UAA'
  NB. expected =. ''
  assert '' -: proteins 'UAA'
)

protein_translation_test_17_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_17  =: monad define
  Description@.1 ('STOP codon RNA sequence 2')
  Order@.1 (17)

  NB. strand   =. 'UAG'
  NB. expected =. ''
  assert '' -: proteins 'UAG'
)

protein_translation_test_18_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_18  =: monad define
  Description@.1 ('STOP codon RNA sequence 3')
  Order@.1 (18)

  NB. strand   =. 'UGA'
  NB. expected =. ''
  assert '' -: proteins 'UGA'
)

protein_translation_test_19_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_19  =: monad define
  Description@.1 ('Sequence of two protein codons translates into proteins')
  Order@.1 (19)

  NB. strand   =. 'UUUUUU'
  NB. expected =. 'Phenylalanine';'Phenylalanine'
  assert ('Phenylalanine';'Phenylalanine') -: proteins 'UUUUUU'
)

protein_translation_test_20_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_20  =: monad define
  Description@.1 ('Sequence of two different protein codons translates into proteins')
  Order@.1 (20)

  NB. strand   =. 'UUAUUG'
  NB. expected =. 'Leucine';'Leucine'
  assert ('Leucine';'Leucine') -: proteins 'UUAUUG'
)

protein_translation_test_21_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_21  =: monad define
  Description@.1 ('Translate RNA strand into correct protein list')
  Order@.1 (21)

  NB. strand   =. 'AUGUUUUGG'
  NB. expected =. 'Methionine';'Phenylalanine';'Tryptophan'
  assert ('Methionine';'Phenylalanine';'Tryptophan') -: proteins 'AUGUUUUGG'
)

protein_translation_test_22_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_22  =: monad define
  Description@.1 ('Translation stops if STOP codon at beginning of sequence')
  Order@.1 (22)

  NB. strand   =. 'UAGUGG'
  NB. expected =. ''
  assert '' -: proteins 'UAGUGG'
)

protein_translation_test_23_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_23  =: monad define
  Description@.1 ('Translation stops if STOP codon at end of two-codon sequence')
  Order@.1 (23)

  NB. strand   =. 'UGGUAG'
  NB. expected =. ,<'Tryptophan'
   assert (,<'Tryptophan') = proteins 'UGGUAG'
)

protein_translation_test_24_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_24  =: monad define
  Description@.1 ('Translation stops if STOP codon at end of three-codon sequence')
  Order@.1 (24)

  NB. strand   =. 'AUGUUUUAA'
  NB. expected =. 'Methionine';'Phenylalanine'
  assert ('Methionine';'Phenylalanine') -: proteins 'AUGUUUUAA'
)

protein_translation_test_25_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_25  =: monad define
  Description@.1 ('Translation stops if STOP codon in middle of three-codon sequence')
  Order@.1 (25)

  NB. strand   =. 'UGGUAGUGG'
  NB. expected =. ,<'Tryptophan'
   assert (,<'Tryptophan') = proteins 'UGGUAGUGG'
)

protein_translation_test_26_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_26  =: monad define
  Description@.1 ('Translation stops if STOP codon in middle of six-codon sequence')
  Order@.1 (26)

  NB. strand   =. 'UGGUGUUAUUAAUGGUUU'
  NB. expected =. 'Tryptophan';'Cysteine';'Tyrosine'
  assert ('Tryptophan';'Cysteine';'Tyrosine') -: proteins 'UGGUGUUAUUAAUGGUUU'
)

protein_translation_test_27_ignore=: 1 NB. Change this value to 0 to run this test
test_protein_translation_test_327  =: monad define
  Description@.1 ('Incomplete RNA sequence can translate if valid until a STOP codon')
  Order@.1 (27)

  NB. strand   =. 'UUCUUCUAAUGGU'
  NB. expected =. 'Phenylalanine';'Phenylalanine'
  assert ('Phenylalanine';'Phenylalanine') -: proteins 'UUCUUCUAAUGGU'
)

