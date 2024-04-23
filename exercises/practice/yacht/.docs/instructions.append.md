## Notes

In the "Yacht" exercise, you will create a verb that calculates the score for a single throw of five dice in the game Yacht, based on the chosen category.

For this exercise, your verb will receive two arguments:

- **Left Argument**: A string representing the scoring category to be applied to the dice roll.
- **Right Argument**: A list of integers representing the five dice rolled.

Your verb should be defined to handle these inputs as follows:

```j
  category =. 'Full House'
  dice     =. 1 3 3 3 5
  
  category scoreYacht dice
```
