CHILDREN=: 'Alice';'Bob';'Charlie';'David';'Eve';'Fred';'Ginny';'Harriet';'Ileana';'Joseph';'Kincaid';'Larry'
PLANTS  =: 'clover';'grass';'radishes';'violets'

group_by_child=: ;"1 @ |: @: (_2&(<\"1))
plants=:  PLANTS {~ 'CGRV' i. (CHILDREN i. <@]) { group_by_child@[
