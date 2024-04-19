require 'strings'

translate=: ' 'joinstring [: first_rule@:second_rule@:third_rule@:fourth_rule each cutopen


NB. Helpers
NB. ===============================================================================================
VOWELS=: (, toupper) 'aeiou'
CONSONANTS=: VOWELS -.~ ,  a. {~ 65 97 +"0 1 i.26

NB. `shift_count` is an adverb that takes an alphabet with the letter that can be shifted
NB. and returns the corresponding shift function
shift_count=: {{ |.~ [: +/  *./\@:(e.&m) }}

match_2nd_rule =: (('xr',:'yt') -.@e.~ 2&{.) *. (CONSONANTS e.~ {.)
match_3rd_rule =: ([: *./ i.&'u' < i.&'aeio') *. (_1 = i.&'q' - i.&'u')
match_4th_rule =: (('y' ~: {.) *. ([: *./ i.&'y'<i.&'aeiou'))

NB. first_rule just add the suffix common to all rules
first_rule =: ,&'ay'
second_rule=: (CONSONANTS shift_count)^:match_2nd_rule
third_rule =: ((CONSONANTS, 'uU') shift_count)^:match_3rd_rule
fourth_rule=: ((CONSONANTS -. 'yY') shift_count)^:match_4th_rule



