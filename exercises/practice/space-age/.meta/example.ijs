NB. Observations:
NB. =====================================================================================================================================

NB. `equal_within` is the same as the adverb`teq` presented on the J forum¹
NB. it allows to define the tolerance comparison to values larger than 2^_34
NB. At the test.ijs file it is used to set it as 10^_2
NB. ¹ teq=: 1 : '|@- <:!.0 m * >.&|' at https://code.jsoftware.com/wiki/Essays/Tolerant_Comparison#Model_of_Tolerant_Equal

SECONDS=: 31557600
PLANETS=: ;: 'Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune'
PERIODS=: 0.2408467 0.61519726 1.0000000 1.8808158 11.862615 29.447498 84.016846 164.79132
equal_within  =: {{ |@- <:!.0 m * >.&| }} 

age=: SECONDS %~ ] % PERIODS {~ PLANETS i. <@[
