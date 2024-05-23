require 'strings'

RESPONSES=: 'Fine. Be that way!';'Calm down, I know what I''m doing!';'Sure.'; 'Whoa, chill out!';'Whatever.'
q =: ('?'-:{:)
y =: (-: toupper)
qy=: q *. y
s =: '\s*'&rxeq

response=: RESPONSES {~ 1 i.~ s`qy`q`y`1: `: 0
