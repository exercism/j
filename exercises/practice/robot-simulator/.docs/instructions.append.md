## Notes

For this exercise you need to define a **locale** named `robot` that defines the **nouns** `position` and `direction` and a **verb** `move`.

- `robot`'s `create` verb take the initial position and direction as an array of boxes.
    
    ```j
      r=. (0 0;'north') conew 'robot'
    ```
- `move` updates the values of `position` and `direction` at the **instace** created.
    ```j
      r=. (0,0;'north') conew 'robot'
      
      NB. initial state
      NB. ====================================
      position__r
        0 0
      direction__r
        north
      
      NB. new states after `move` is executed 
      NB. ====================================
      move__r 'LA'
      position__r
        _1 0
      direction__r
        west      
    ```
