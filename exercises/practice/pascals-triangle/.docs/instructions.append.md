## Output
In this exercise, you will implement a verb that generates Pascal’s Triangle up to a given number of rows. The output from your verb can be formatted in one of two ways:

  1. As an array of boxed lists, where each list represents a row in Pascal’s Triangle.
  1. As a table, where the numbers are aligned to the right, and zeros are used to fill empty spaces on the left.
### Example output
Here are two valid outputs for `pascal 3`:

  - As an array of boxed lists:
```j
  (1 ; 1 1 ; 1 2 1) -: pascal 3          NB. This test will pass
```
  - As a table with padding:
```j
  (3 3$1 0 0 1 1 0 1 2 1) -: pascal 3   NB. This test also passes
```
