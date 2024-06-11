# Tests

To run the tests follow these steps:

- Head to the problem directory (eg `~/Exercism/hello-world`).
- Start a `jconsole` session (eg by typing `jconsole` or `ijconsole`) in a terminal.
- Load your solution file (eg `load 'hello-world.ijs'`)
- Load the unit test framework by typing `load  'general/unittest'`
- Test your solution by typing `unittest 'test.ijs'`.
<br></br>
- Alternatively it's possible run the tests in a single line like this: `jconsole -js "load 'hello-world.ijs'" "echo unittest 'test.ijs'" "exit 0"`.

## Skipped tests

At first, only the initial test will be enabled.
approach encourages you to solve the exercise step by step.
Each test includes a noun above its definition, with a name ending in _'\_ignore'_.
To run the test, change its value to 0.

### Example:

```
    leap_test_02_ignore=: 1 NB. Change this value to 0 to run this test
    test_leap_test_02  =: monad define
    ...                     NB. test definitions
    )
```
