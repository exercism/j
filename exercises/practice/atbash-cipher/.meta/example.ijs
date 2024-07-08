require 'strings'

numbers=: a. {~ 48 + i. 10
alphabet=: numbers ,~ |. a. {~ 97 + i. 26

encode=: (' ' joinstring _5 <\ alphabet {~ [: (75&+^:(0&>)@(_97 + a.&i.))"0 ('[^0-9a-z]';'')&rxrplc@tolower)
decode=: (a. {~ [: (_75&+^:(122&<)@(97 + alphabet&i.))"0 -.&' ')
