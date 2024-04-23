## Additional Information

### Input

The input for this exercise are:

- `target`: A string (e.g., `'stone'`) will be the _left argument_.
- `candidates`: A list of boxed strings (e.g., `'stone' ; 'tones' ; 'banana' ; 'tons' ; 'notes' ; 'Seton'`) will be the _right argument_.

Your verb will be called like this:

```j
  target     =. 'stone'
  candidates =. 'stone' ; 'tones' ; 'banana' ; 'tons' ; 'notes' ; 'Seton'
  
  subject findAnagrams candidates
```

### Output

Your verb should return a _list_ of boxes containig the strings that are anagrams of the target. If there are no anagrams, the result should be `empty`.
