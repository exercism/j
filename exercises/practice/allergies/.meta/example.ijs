ALLG=: 'eggs';'peanuts';'shellfish';'strawberries';'tomatoes';'chocolate';'pollen';'cats'

allergic_to=: <@[ e. list@]
list=: #&ALLG @: |. @: ((2 #~ #ALLG)&#:)

