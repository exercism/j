clean_input=: #~ e.&'()[]{}'
pairwise   =: 2&(]\)
find_pair  =: '{}'&-: +. '[]'&-: +. '()'&-:
index_pairs=: [: (, >:)@I. find_pair"1@:pairwise
remove_pair=: {~ i.@# -. index_pairs

isPaired   =: '' -: remove_pair^:_ @: clean_input
