NB. https://rosettacode.org/wiki/Variable-length_quantity#J

encode=: [: ; }.@([: +//. 128&([ ,: #.^:_1))each
decode=: 128&(| (128&#./.)~ [: +/\ _1 |. >) 


