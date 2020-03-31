

# Introduction

Order of execution in J goes from right to left. This makes
expressions unambiguous while obviating the need for operator
precedence. Parentheses can be used to alter the order. Take the
following example:

    ┌─────┬──┐
    │5*5+5│50│
    ├─────┼──┤
    │5+5*5│30│
    └─────┴──┘

A classic grade school game, Math24, has cards with four numbers. The
goal is to make 24 using those numbers with the basic arithmetic
operations: plus, minus, times, and divide (`+ - * %`).

Take `'1 2 3 6'` as an example. One way to make 24 is `'6*2+3-1'`.

    NB. primitives:
    NB.  ;  "link"    takes arguments and links them into (heterogeneous) boxed array
    NB.  ". "do"      uses the J interpreter to evaluate the argument string
    NB.  two verbs f g is called a hook. with argument y, (f g) y evluates y f (g y).
    NB.  in this case: '6*2+3-1' ; ". '6*2+3-1'
    (; ".) '6*2+3-1'

    ┌───────┬──┐
    │6*2+3-1│24│
    └───────┴──┘

Your task is to take the numbers given in the file `arithmetic.ijs`
and write expressions to make 24 **without parentheses**. Rearrange the
numbers as necessary. The requirement to not use parentheses is to
help gain intuition for how J expressions are evaluated.

