# About Basics 1
J is a programming language that originated in the early 1990s, designed by Kenneth E. Iverson and Roger Hui as a successor to APL. It uses only ASCII characters, making it more accessible while retaining the power of its predecessor.

## Comments
Comments are marked by the `NB.` symbol, which stands for “Nota Bene,” a Latin phrase that means “note well.” Comments can provide context, describe the purpose of code, or leave instructions for future reference.

## Assignment
In J, assignment is the process of binding a value to a name, and it's done using **copulas**. There are two main types of assignment:

- **Global Assignment (`=:`)**: This assigns a value to a name globally, meaning the name can be used anywhere in your code after the assignment.
- **Local Assignment (`=.`)**: This assigns a value to a name within a local scope, such as inside a function or control structure.

## Nouns
In J, data elements are called **nouns**. These can be:
  * Numbers,
  * Charaters, 
  * Arrays of any dimension.


## Verbs
In J, **verbs** are the equivalent of functions or operators in other programming languages. They act on data, which are known as nouns, to produce results. Verbs can be either a **monad** (a verb that take only one argument) or **dyad** (a verb that take two arguments) or **ambivalent** (a verb that can operate either as monad or dyad).

For example, the built-in verb `+` can be used:
 * as a monad, `+` returns the [complex conjugate](https://en.wikipedia.org/wiki/Complex_conjugate) of its **argument**, so `+ 3` yields `3`
 * as a dyad `+`, adds two numbers together, as in `3 + 4`, which yields `7`.

### Define your own (explicit) verbs
**Explicit definitions** are a powerful way to create user-defined verbs. This feature allows you to define complex operations using a more traditional, procedural style of programming. 

An explicit definition of a verb in J looks like:
```j
  double =: monad define 
    2 * y
  )
```
where:
* `monad define` is the header of the verb:
    * the **name** `monad` is defined in j's **stlib** and inform the type of verb will be created, in this case a **monadic** verb
    * the name `define` is also from stdlib tells that the body of our verb is defined on the following lines
 * `2 * y` is the body of the verb:
    * `*` is the a multiplication primitive
    * the name `y` is automacally defined inside an explicit definition and acts as placeholder for the verbs argument
* and finally `)` indicates the end of the definition.


for **dyads** the structure is the same: 
```j
  times =: dyad define
    x * y
  )
```
The difference being:
* the name `dyad` indicating the type of verb is being created
* the name `x` is also available inside the definition representing the **left argument** of the function while `y` represents the **right argument**.

If your verb contains only one expression it can be define in a single line as below:
```j
  double=: monad : '2 * y'
  times =: dyad : 'x * y'
```

