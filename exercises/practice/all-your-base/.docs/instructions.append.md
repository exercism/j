## Additional Information

### Example Input

```j
  INPUTS=: 2 ; 1 0 0 1 0 1 ; 10
```

This means that your inputs are:
```
  0{INPUTS NB. is the input base.
  1{INPUTS NB. is the digits.
  2{INPUTS NB. is the output base.
```
### Handling Invalid Inputs

If any of the input values is invalid, your verb should return either an `empty`(e.g., `0$0` or `''`).

#### Examples

- If the _input base_ is smaller than 2:
    ```j
      '' -: rebase 10 ; 0 0 0 0 ; 1
    ```

- If the _output base_ is smaller than 2:
    ```j
      '' -: rebase 1 ; 0 0 0 0 ; _7
    ```

- If _digits_ contains values larger or equal to the input base:
    ```j
      '' -: rebase 10 ; 1 0 2 0 ; 2
    ```
