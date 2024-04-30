require 'general/unittest'

NB. roman=: 'You need to implement this verb.'13!:8 (55)
r100  =. <;._1 '  C CC CCC CD D DC DCC DCCC CM'
r10   =. <;._1 '  X XX XXX XL L LX LXX LXXX XC'
r1    =. <;._1 '  I II III IV V VI VII VIII IX'
R1000 =: , r100 ,&.>/ r10 ,&.>/ r1

roman =: {{ ('M' $~ <. y % 1000) , R1000 {::~ 1000 | y }}
