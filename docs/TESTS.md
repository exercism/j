# Tests

If you run in to any issues with running the tests at all please just submit your solution and a mentor will help you figure out what's wrong.
J is a language that few people use, so finding information can be brutal.

# TLDR

- Head to the problem directory (eg `~/Exercism/hello-world`).
- Start a `jconsole` session (eg by typing `jconsole` or `ijconsole`) in a terminal.
- Load your solution file (eg `load 'hello-world.ijs'`)
- Load the unit test framework by typing `load  'general/unittest'`
- Test your solution by typing `unittest 'test.ijs'`.

# Terminal

The way the tracks tests are set up is hoped to be as simple as possible.
If you're working an exercise, say `hamming.ijs` here's how the work should flow.
Edit `hamming.ijs` writing out your solution.
Interactively build it up by first typing.

```j
NB. your j terminal binary may be ijconsole (eg. on Debian)
jconsole 'hamming.ijs' NB. start a J console session with definitions loaded hamming.ijs
```

Then from inside the J console, reload by typing

```j
load 'hamming.ijs'
```

Next Step is load the unit test framework by typing

```j
load 'general/unittest'
```

To run the tests &#x2013; after you have loaded your solution &#x2013; type

```j
unittest 'test.ijs'
```

And then observe the results.
