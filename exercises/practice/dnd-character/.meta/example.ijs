NB. Verbs
NB. ===============================================================================================
ability   =: take_3@roll_4
modifier  =: 2 <.@%~ _10&+
character =: {{ (]ABILITIES)=: (, hitpoints) generate_6 y }}


NB. Helpers
NB. ===============================================================================================
ABILITIES  =: 'STRENGTH DEXTERITY CONSTITUTION INTELLIGENCE WISDOM CHARISMA HITPOINTS'
roll_4     =: >:@?@(4 # 6)
take_3     =: [: +/ 3&{.@({~ \:)
generate_6 =: ability"0@i.@6"_
hitpoints  =: 10 + modifier@(2&{)
