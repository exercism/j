LETTERS=: 'aeioulnrst','dg','bcmp','fhvwy','k','jx',:'qz'
VALUES =: 1 2 3 4 5  8 10

score=: [: +/^:_ [: (VALUES #~ e."1&LETTERS)"0 tolower
