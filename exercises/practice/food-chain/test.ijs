load 'food-chain.ijs'


before_all=: monad define  
  (]Description =: (3 : 'descriptions=: i.0')`(3 : 'descriptions=: descriptions , < y'))@.0 ''
  (]Order       =: (3 : 'order=: i.0')`(3 : 'order=: order , < y'))@.0 ''
  (]Task        =: (3 : 'tasks=: i.0')`(3 : 'tasks=: tasks , < y'))@.0 '' 
)


food_chain_test_01_ignore=: 0
test_food_chain_test_01  =: monad define
  Description@.1 ('fly')
  Order@.1 (1)

  NB. startverse=. 1
  NB. endverse=. 1
  NB. expected=.{{)nI know an old lady who swallowed a fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 1 1
)

food_chain_test_02_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_02  =: monad define
  Description@.1 ('spider')
  Order@.1 (2)

  NB. startverse=. 2
  NB. endverse=. 2
  NB. expected=.{{)nI know an old lady who swallowed a spider.
NB. It wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a spider.
It wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 2 2
)

food_chain_test_03_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_03  =: monad define
  Description@.1 ('bird')
  Order@.1 (3)

  NB. startverse=. 3
  NB. endverse=. 3
  NB. expected=.{{)nI know an old lady who swallowed a bird.
NB. How absurd to swallow a bird!
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a bird.
How absurd to swallow a bird!
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 3 3
)

food_chain_test_04_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_04  =: monad define
  Description@.1 ('cat')
  Order@.1 (4)

  NB. startverse=. 4
  NB. endverse=. 4
  NB. expected=.{{)nI know an old lady who swallowed a cat.
NB. Imagine that, to swallow a cat!
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a cat.
Imagine that, to swallow a cat!
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 4 4
)

food_chain_test_05_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_05  =: monad define
  Description@.1 ('dog')
  Order@.1 (5)

  NB. startverse=. 5
  NB. endverse=. 5
  NB. expected=.{{)nI know an old lady who swallowed a dog.
NB. What a hog, to swallow a dog!
NB. She swallowed the dog to catch the cat.
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a dog.
What a hog, to swallow a dog!
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 5 5
)

food_chain_test_06_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_06  =: monad define
  Description@.1 ('goat')
  Order@.1 (6)

  NB. startverse=. 6
  NB. endverse=. 6
  NB. expected=.{{)nI know an old lady who swallowed a goat.
NB. Just opened her throat and swallowed a goat!
NB. She swallowed the goat to catch the dog.
NB. She swallowed the dog to catch the cat.
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a goat.
Just opened her throat and swallowed a goat!
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 6 6
)

food_chain_test_07_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_07  =: monad define
  Description@.1 ('cow')
  Order@.1 (7)

  NB. startverse=. 7
  NB. endverse=. 7
  NB. expected=.{{)nI know an old lady who swallowed a cow.
NB. I don't know how she swallowed a cow!
NB. She swallowed the cow to catch the goat.
NB. She swallowed the goat to catch the dog.
NB. She swallowed the dog to catch the cat.
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a cow.
I don't know how she swallowed a cow!
She swallowed the cow to catch the goat.
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 7 7
)

food_chain_test_08_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_08  =: monad define
  Description@.1 ('horse')
  Order@.1 (8)

  NB. startverse=. 8
  NB. endverse=. 8
  NB. expected=.{{)nI know an old lady who swallowed a horse.
NB. She's dead, of course!
NB. }}
  assert {{)nI know an old lady who swallowed a horse.
She's dead, of course!
}} = recite 8 8
)

food_chain_test_09_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_09  =: monad define
  Description@.1 ('multiple verses')
  Order@.1 (9)

  NB. startverse=. 1
  NB. endverse=. 3
  NB. expected=.{{)nI know an old lady who swallowed a fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a spider.
NB. It wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a bird.
NB. How absurd to swallow a bird!
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. }}
  assert {{)nI know an old lady who swallowed a fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a spider.
It wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a bird.
How absurd to swallow a bird!
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.
}} = recite 1 3
)

food_chain_test_10_ignore=: 1 NB. Change this value to 0 to run this test
test_food_chain_test_10  =: monad define
  Description@.1 ('full song')
  Order@.1 (10)

  NB. startverse=. 1
  NB. endverse=. 8
  NB. expected=.{{)nI know an old lady who swallowed a fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a spider.
NB. It wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a bird.
NB. How absurd to swallow a bird!
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a cat.
NB. Imagine that, to swallow a cat!
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a dog.
NB. What a hog, to swallow a dog!
NB. She swallowed the dog to catch the cat.
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a goat.
NB. Just opened her throat and swallowed a goat!
NB. She swallowed the goat to catch the dog.
NB. She swallowed the dog to catch the cat.
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a cow.
NB. I don't know how she swallowed a cow!
NB. She swallowed the cow to catch the goat.
NB. She swallowed the goat to catch the dog.
NB. She swallowed the dog to catch the cat.
NB. She swallowed the cat to catch the bird.
NB. She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
NB. She swallowed the spider to catch the fly.
NB. I don't know why she swallowed the fly. Perhaps she'll die.
NB. 
NB. I know an old lady who swallowed a horse.
NB. She's dead, of course!
NB. }}
  assert {{)nI know an old lady who swallowed a fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a spider.
It wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a bird.
How absurd to swallow a bird!
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a cat.
Imagine that, to swallow a cat!
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a dog.
What a hog, to swallow a dog!
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a goat.
Just opened her throat and swallowed a goat!
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a cow.
I don't know how she swallowed a cow!
She swallowed the cow to catch the goat.
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
She swallowed the cat to catch the bird.
She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.
She swallowed the spider to catch the fly.
I don't know why she swallowed the fly. Perhaps she'll die.

I know an old lady who swallowed a horse.
She's dead, of course!
}} = recite 1 8
)

