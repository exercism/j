colors=: <;._1 ' black brown red orange yellow green blue violet grey white'
color=: (colors&i."0)@(3&{.)
value=: 10 #. }: , 0 #~ {:
unit=: (,&'ohms')each (a:,'kilo';'mega';'giga')

label=: ( {. ; unit {~ {: )@( (%&1e3`>:"0)^:(1e3 <: {.)^:_ )@(,&0)@value@color
