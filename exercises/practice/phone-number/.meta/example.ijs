pattern=: '\+?1?[ -.]*(\(?[2-9]\d\d\)?[ -.]*)([2-9]\d\d[ -.]*)\d{4} *'
clean=: (}.^:(11 = #) @ ; @ ('\d'&rxall)) @: (empty^:([: -. pattern&rxeq))
