NB. Adapted from this approach: https://exercism.org/tracks/scala/exercises/food-chain/approaches/move-complexity-to-data
recite=:{{)m
  's e'=. y
  mask=. 1 (s + i. >: e - s)} 9#0
  LF joinstring mask # verses
}}

backwash=: {{)d
  's e'=. y
  joinstring (e - s) {. s }. (<;.2 x)
}}

fly=:{{)nI know an old lady who swallowed a fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}}

spider=:{{)nI know an old lady who swallowed a spider.
It wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
}} , fly backwash 1 2

bird=:{{)nI know an old lady who swallowed a bird.
How absurd to swallow a bird!
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
}} , spider backwash 2 4

cat=:{{)nI know an old lady who swallowed a cat.
Imagine that, to swallow a cat!
She swallowed the cat to catch the bird.
}} , bird backwash 2 5

dog=:{{)nI know an old lady who swallowed a dog.
What a hog, to swallow a dog!
She swallowed the dog to catch the cat.
}} , cat backwash 2 6

goat=:{{)nI know an old lady who swallowed a goat.
Just opened her throat and swallowed a goat!
She swallowed the goat to catch the dog.
}} , dog backwash 2 7

cow=:{{)nI know an old lady who swallowed a cow.
I don't know how she swallowed a cow!
She swallowed the cow to catch the goat.
}} , goat backwash 2 8

horse=:{{)nI know an old lady who swallowed a horse.
She's dead, of course!
}}

verses=: '';fly;spider;bird;cat;dog;goat;cow;horse
