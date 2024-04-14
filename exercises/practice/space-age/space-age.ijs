require 'general/unittest'


SECONDS=: 31557600
PLANETS=: ;: 'Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune'
PERIODS=: 0.2408467 0.61519726 1.0000000 1.8808158 11.862615 29.447498 84.016846 164.79132
equal_within  =: {{ |@- <:!.0 m * >.&| }} 

age=: SECONDS %~ ] % PERIODS {~ PLANETS i. <@[

NB. age=: 'You need to implement this verb.'13!:8 (55)
