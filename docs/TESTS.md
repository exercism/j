
# Terminal (jconsole)

Make sure you have used J's package manager to install J's unit
testing library. This can be done by entering `jconsole` at the
command line followed by these commands:

    load'pacman'
    'update'jpkg''
    'install'jpkg'general/unittest'

-   To run the tests go to the directory for the given exercism
    problem. Start a `jconsole` session. Enter
    `require'general/unittest.ijs'`.
-   Develop your solution in `problem.ijs` (eg `hello-world.ijs`).
-   Whenever you'd like to test the program, run `unittest'test.ijs'`.

