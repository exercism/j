require 'general/unittest'

NB. meetup=: 'You need to implement this verb.'13!:8 (55)

meetup=: {{
  'year month week dayofweek'=: y
  teenthdays=: (year , month , ])every 13+i.7
  '`first second third fourth teenth last' =: (0&{)`(1&{)`(2&{)`(3&{)`(,@:{~ (I.@e.)&teenthdays)`(_1&{)
  daysinmonth=: ((year, month)&,)every >: i. (>./ @ , @: ". @ > @ calendar) year, month
  dayofweek =: (;: 'Sunday Monday Tuesday Wednesday Thursday Friday Saturday')&i. <dayofweek
  week~ (#~ [: (dayofweek)&=  weekday) daysinmonth
}}
