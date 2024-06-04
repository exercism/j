largest_product=: {{
  if. 0 = x  do. 1 return. end.
  x (>./ @: (*/"1) @: ("."0) @ (]\)) y
}}
