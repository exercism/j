AP2 =: ;@All                    NB. AP2 (n)
All =: Ns ,.EACH Parts
Ns =: >:@i.
Parts =: Build^:N Start
Start =: 1 0 <@$ ]
N =: 0 >. <:@[
Build =: <@;@Next , ]
Next =: Lead Ps ]
Lead =: Min #
Min =: - <. ]
Ps =: Ns@[ Join EACH {.
Join =: [ ,. Select # ]
Select =: >: {."1

init =: (<@<@i.@(1 0"_)) ,~ <"0@(] , (] (- <. >:@]) i.)@<:)
pps1 =: >:@i.@[ <@;@:(([ ,. (>: {."1) # ])&.>) {.
exit =: >@{.@>
Boss =: [: exit [: (],~ pps1)&.>/ init