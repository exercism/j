cocurrent 'character'

NB. Helpers
NB. ===============================================================================================
roll_4     =: >:@?@(4 # 6)
take_3     =: [: +/ 3&{.@({~ \:)
generate_6 =: ability"0@i.@6"_

NB. Exercise verbs
NB. ===============================================================================================
ABILITIES =: 'STRENGTH DEXTERITY CONSTITUTION INTELLIGENCE WISDOM CHARISMA HITPOINTS'
ability   =: take_3@roll_4
modifier  =: 2 <.@%~ _10&+
hitpoints =: 10 + modifier@(2&{)

create=: {{ (]ABILITIES)=: (, hitpoints) generate_6 '' }}

destroy=: {{ codestroy'' }}


