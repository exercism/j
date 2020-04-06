require'convert/json'

BLURB=: noun define
J is a terse interpreted array language originally designed by Ken Iverson and Roger Hui. It is great for wholemeal functional programming, supports object orientation, and blazes through numerical vector computations.
)

NB. Track Configuration
TRACK_ID     =: 'j'
LANGUAGE     =: 'J'
VERSION      =: 2
ACTIVE       =: 'json_false'
ONLINE_EDITOR=: (;:'indent_style indent_size'),:'space';0
SOLUTION_PAT =: 'example.*[.]ijs'
KEYS         =: ;:'track_id language version blurb active online_editor solution_pattern'
CONFIG       =:    TRACK_ID;LANGUAGE;VERSION;BLURB;ACTIVE;ONLINE_EDITOR;SOLUTION_PAT
CONFIG       =: KEYS,:CONFIG

write_config=: monad define
'config.json' fwrites~ enc_json CONFIG
)

configlet_uuid=: monad define
pth=. 'exercises/',y,'/.meta/config/uuid'[cmd=. './bin/configlet uuid'
if. #y do. cmd=. cmd,' > ',pth assert. -. fexist pth end.
2!:1 cmd
)

exercisms=: 1 1 dir 'exercises'
exercism_slugs  =: ('slug';[:{:<;._2)&.>
exercism_config =: [: > [: (>@{:@fpathname ; LF-.~freads) &.> 1 1 dir ,&'.meta/config'
exercism_configs=: (exercism_slugs exercisms) (,&>) exercism_config &.> exercisms
NB. $]tmp=: (<@|:)"_1 exercism_configs
CONFIG=: CONFIG ,. |: ,: 'exercises' ; (<(<@|:)"_1 exercism_configs)

setup_uuids=: monad define
assert. 'j' = >{: <;._1 jcwdpath'' NB. make sure in j repo.
for_e. exercisms do. try. configlet_uuid 1 {:: <;._2 >e catch. end. end.  
)

write_config''
