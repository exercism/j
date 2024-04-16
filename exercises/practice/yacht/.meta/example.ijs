sum_repeats    =: +/@:(] #~ =)

ones            =: 1 & sum_repeats
twos            =: 2 & sum_repeats
threes          =: 3 & sum_repeats
fours           =: 4 & sum_repeats
fives           =: 5 & sum_repeats
sixes           =: 6 & sum_repeats
full_house      =: 0"_`(+/) @. ((2 2$2 3 3 2) e.~ #/.~)
four_of_a_kind  =: 0"_`(4 * [: {. ~. \: #/.~) @. ([: +./^:_ [: (E.&4 5)every #/.~)
little_straight =: 0 30 {~ 1 2 3 4 5 -: ({~ /:)
big_straight    =: 0 30 {~ 2 3 4 5 6 -: ({~ /:)
choice          =: +/
yacht           =: 0 50 {~ (1 = #@~.)


score=: {{ x~ y }}
