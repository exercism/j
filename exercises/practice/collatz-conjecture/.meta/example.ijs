domain=. (3 : '''Only positive integers are allowed'' 13!:8 (45)')^:(0&>:)
collatz=: -:`(1 + 3&*) @. (2&|)
steps=: [: <:@# [: collatz^:(>&1)^:(< _) domain
