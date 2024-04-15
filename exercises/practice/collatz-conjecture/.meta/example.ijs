collatz=: -:`(1 + 3&*) @. (2&|)
steps  =: [: <:@# collatz^:(>&1)^:(< _)
