# Terminal (jconsole)

Make sure you have used J's package manager to install J's unit testing library. This can be done by entering `jconsole` at the command line followed by these commands:

```j
load'pacman'
'update'jpkg''
'install'jpkg'general/unittest'
```

-   Head to the problem directory (eg `~/Exercism/hello-world`).
-   Start a `jconsole` session (eg by typing `jconsole` in a terminal).
-   Enter `require'general/unittest.ijs'` to import the unit test library.
-   Test your solution by typing `unittest'test.ijs'`.