NB. Tacit whithout equality check
NB. findAnagrams=: (-:&(/:~)"1&:(tolower@>))"1 0 # ]

findAnagrams=: {{
  (#~ (</:~x) = (/:~ @(''"_^:(x&-:))@tolower)each) y
}}
