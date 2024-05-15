## Notes

You need to define two verbs called `allergic_to` and `list`

### Inputs
1. `allergic_to` verb is **dyad** where:

    - **Left Argument**: is a string containing the allergen name.
    - **Right Argument**: is the score obtained.

1. `list` verb is a **monad** where:

    - The sole argument is the score obtained.

Your verbs will be called with these arguments like so:

```j
  'cats' allergic_to 255
  list 5
```
### Outputs
The output of `allergic_to` verb is a **boolean**

The output of `list` is a **list of boxes**
