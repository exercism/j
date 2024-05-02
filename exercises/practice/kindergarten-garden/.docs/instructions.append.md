## Notes

Here's what you need to know about the input format:

- **Left Argument**: The diagram representing the garden disposition, provided as a table of character with `tally` equals 2.
- **Right Argument**: The students name, provided as an string.

Your function will be called with these arguments like so:

```j
  diagram=. 2 24$'VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV'
  student=. 'Fred'
  
  diagram plants student
```
