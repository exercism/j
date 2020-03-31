

# Introduction

Order of execution in J goes from right to left. This makes
expressions unambiguous while obviating the need for operator
precedence. Parentheses can be used to alter the order. For example:

    ┌─────┬──┐
    │5*5+5│50│
    ├─────┼──┤
    │5+5*5│30│
    └─────┴──┘

A classic grade school game, Math24, has cards with four numbers. The
goal is to make 24 using those numbers with the basic arithmetic
operations: plus, minus, times, and divide (`+ - * %`).

Take `'1 2 3 6'` as an example. One solution is `'6*2+3-1'`:

    ┌───────┐
    │6*2+3-1│
    ├───────┤
    │6*2+2  │
    ├───────┤
    │6*4    │
    ├───────┤
    │24     │
    └───────┘


# Exercise

The task is to take the numbers given in the file `arithmetic.ijs` and
write expressions to make 24 **without parentheses**. Rearrange the
numbers as needed. The requirement to not use parentheses is to help
gain intuition for how J expressions are evaluated.

