require'convert/json'

CORE_SLUGS=:'hello-world';'hamming';'difference-of-squares';'nucleotide-count'
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

write_config=: 3 : 0
'config.json' fwrites~ enc_json CONFIG
)

configlet_uuid=: 3 : 0
pth=. 'exercises/',y,'/.meta/config/uuid'[cmd=. './bin/configlet uuid'
if. #y do. cmd=. cmd,' > ',pth assert. -. fexist pth end.
2!:1 cmd
)

setup_uuids=: 3 : 0
assert. 'j' = >{: <;._1 jcwdpath'' NB. make sure in j repo.
for_e. exercisms do. try. configlet_uuid 1 {:: <;._2 >e catch. end. end.  
)

skeleton=: 3 : 0
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
'0.0.0'      fwrites config,'version' NB. todo: read id from problem-specs repo
(y,'=:')     fwrites dir   ,'example.ijs'
(y,'=:')     fwrites dir   ,y,'.ijs'
'NB. tests'  fwrites dir,'test.ijs'
)

rank_egs=: 3 : 0
(\:{:"1)}.,/>(;[:#[:1!:1[:<,&'example.ijs')&.> ,.exercisms
)

NB. run example solution against test suite
verify_exercism=: 3 : 0
1!:44 'exercises/',y,'/'        NB. exercise dir
try. 0!:0 < 'example.ijs'       NB. load example script
     result=. 0!:3 < 'test.ijs' NB. run tests silently
catch. result=. 0 end.          NB. fail if exception
1!:44 '../..'
result return.
)

NB. verify y. check all example solutions pass test suites
verify=: 3 : 0
failed=. slugs #~ -. > verify_exercism &.> slugs
assert. a: -: < failed
smoutput 'all exercises passed'
)
