require'convert/json general/unittest'

CORE_SLUGS=:'hello-world';'difference-of-squares';'hamming-distance';'nucleotide-count'
CORE_SLUGS=: CORE_SLUGS,'rna-transcription';'pascals-triangle';'sum-of-multiples'
slugs=: (/: CORE_SLUGS&i.) >([:{:<;._2)&.>1 1 dir 'exercises' NB. put core slugs first
ex_config=: 'slug'&;,[:>[:(>@{:@fpathname;LF-.~freads)&.>1 1 dir('exercises/'&,@,&'/.meta/config')
EXERCISMS=: <(|:@ex_config) &.> slugs

NB. Track Configuration
BLURB=: noun define
J is a terse interpreted array language originally designed by Ken Iverson and Roger Hui. It is great for wholemeal functional programming, supports object orientation, and blazes through numerical vector computations.
)
TRACK_ID     =: 'j'
LANGUAGE     =: 'J'
VERSION      =: 2
ACTIVE       =: 'json_false'
ONLINE_EDITOR=: (;:'indent_style indent_size'),:'space';0
SOLUTION_PAT =: 'example.*[.]ijs'
KEYS         =: ;:'track_id language version blurb active online_editor solution_pattern exercises'
CONFIG       =: TRACK_ID;LANGUAGE;VERSION;BLURB;ACTIVE;ONLINE_EDITOR;SOLUTION_PAT;EXERCISMS
CONFIG       =: KEYS,:CONFIG

write_config=: monad define
'config.json' fwrites~ enc_json CONFIG
)

configlet_uuid=: monad define
pth=. 'exercises/',y,'/.meta/config/uuid'[cmd=. './bin/configlet uuid'
if. #y do. cmd=. cmd,' > ',pth assert. -. fexist pth end.
2!:1 cmd
)

setup_uuids=: monad define
assert. 'j' = >{: <;._1 jcwdpath'' NB. make sure in j repo.
for_e. exercisms do. try. configlet_uuid 1 {:: <;._2 >e catch. end. end.  
)

skeleton=: monad define
dir=. 'exercises/',y,'/'
config=. dir,'.meta/config/'
assert. 'j' = >{: <;._1 jcwdpath'' NB. make sure in j repo.
assert. -. fexist dir
fpathcreate config
configlet_uuid y
'json_false' fwrites config,'auto_approve'
'json_false' fwrites config,'core'
'json_true'  fwrites config,'deprecated'
'json_null'  fwrites config,'unlocked_by'
(y,'=:')     fwrites dir   ,'example.ijs'
(y,'=:')     fwrites dir   ,y,'.ijs'
'require''general/unittest'''fwrites dir,'test.ijs'
'0.0.0' fwrites config,'version'
)

rank_egs=: monad define
(\:{:"1)}.,/>(;[:#[:1!:1[:<,&'example.ijs')&.> ,.exercisms
)

verify_exercism=: monad define
dir=. 'exercises/',y,'/'
try.
  test=. 'b'freads dir,'test.ijs'
  assert. -. test = _1
  'test.ijs' fwrites~ >'load ''example.ijs''';}.test
  'example.ijs' fcopynew dir,'example.ijs'
  assert. fexist'test.ijs'
  assert. fexist'example.ijs'
  ferase'example.ijs'[ferase'test.ijs'[result=. unittest'test.ijs'
catch. result=. '' [ echo 'oops' end.
result[ferase'test.ijs'[ferase'example.ijs'
)

verify_all =: monad define
try.
  result=. verify_exercism &.> slugs
  assert. -. a: e. result
  assert. -. +./ 'assertion failure' E. ;result
  'OK'
catch. 'FAIL' end.
)

