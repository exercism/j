# Tests

## TLDR
 
- Head to the problem directory (e.g. `~/Exercism/hello-world`).
- Start a `jconsole` session in a terminal.
- Load your solution file (e.g. `load 'hello-world.ijs'`).
- Load the unit test framework by typing `load  'general/unittest'`.
- Test your solution by typing `unittest 'test.ijs'`.
<br></br>
- Alternatively it's possible run the tests in a single line like this: `jconsole -js "load 'hello-world.ijs'" "echo unittest 'test.ijs'" "exit 0"`.

## Jconsole Session

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

## Command line

You can run the tests in a single-line command in the terminal using the -js flag:

```j
jconsole  -js "load 'hamming.ijs'" "echo unittest 'test.ijs'" "exit 0"
```
where each argument represents a command that will be executed sequentially.
