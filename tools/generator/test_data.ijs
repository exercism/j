NB. Exercism test-data reader.
NB. Decode only: convert/json mis-encodes negative numbers. If encoding is ever needed, switch to convert/pjson. 
NB. It outputs a different layout, so all_cases, drop_excluded and load_exercise must change too.
require 'strings regex convert/json web/gethttp'

NB. validation
NB. ____________________________________________________________________

NB. valid_slug y   1 if y is a slug: lowercase alphanumeric words joined by single hyphens.
NB. Also:  *./@e.&'0123456789abcdefghijklmnopqrstuvwxyz-' *. *@# *. -.@(+./)@({. , {: , [: +./ 2 *./\ ])@('-'&E.)
valid_slug=: '[a-z0-9]+(-[a-z0-9]+)*'&rxeq

valid_file=: ''"_ ^: (-:&_1) @ freads


NB. tests.toml
NB. ____________________________________________________________________

NB. excluded_tests y   Boxed uuids of the tests marked `include = false`.
NB. y is the text of a tests.toml: one [uuid] header per test, followed by
NB. key = value lines. Returns '' if the text cannot be parsed.
excluded_tests=:{{
  lines=. dltb each @: cutLF                NB. trimmed lines
  tests=. <;.1~ '[' = {.@>                  NB. one box per [uuid] section
  flags=. #~ (<'include = false')&e.S:1     NB. keep the excluded sections
  uuid =. [: }.@}:L:0 {.@>                  NB. '[abc]' -> 'abc'
  uuid @: flags @: tests @: lines :: (''"_) y
}}

NB. configlet
NB. ____________________________________________________________________

NB. configlet_data_dir ''  Returns the exercises dir of configlet's cached problem-specifications, or '' if it cannot be found.
NB. FRAGILE: depends on the first line of `configlet info -o -v d` starting with PREFIX (below). Update PREFIX if configlet changes its output.
configlet_data_dir=:{{
  exe=. hostpathsep 'bin/configlet' , #&'.exe' IFWIN
  'PREFIX len'=. (] ; #) 'Using cached ''problem-specifications'' dir: '

  NB. first line: if it starts with PREFIX drop it (the rest is the path), else ''
  parse_dir=. (''"_)`(len&}.) @. (PREFIX -: len&{.) @ ({.~ i.&1@:(e.&CRLF))

  dir=. parse_dir shell exe , ' info -o -v d'
  dir=. ,&'/exercises/'^:(*@#) dir
  hostpathsep dir
}}

NB. providers
NB. ____________________________________________________________________
NB. Each returns the file text, or '' if the file is not available.

NB. canonical_github y   y: exercise slug. Reads from the main branch.
canonical_github=:{{
  url=. 'https://raw.githubusercontent.com/exercism/problem-specifications/main/exercises/' , y , '/canonical-data.json'
  '-s' gethttp url
}}

NB. read_canonical y   y: exercise dir. Reads <y>/canonical-data.json.
NB. Returns the text, or '' if it cannot be read.
read_canonical=: valid_file @ hostpathsep @ (,&'/canonical-data.json')

NB. x canonical_local y   x: exercises dir (trailing '/'), y: exercise slug.
NB. An empty x gives '' (no directory to look in).
canonical_local=: ''"_`(read_canonical @ ,) @. (*@#@[)

NB. additional_cases y   y: exercise dir. Reads <y>/additional-test-cases.json.
NB. Returns the text, or '' if it cannot be read.
NB. Same structure as canonical-data.json.
additional_cases=: valid_file @ hostpathsep @ (,&'/additional-test-cases.json')

NB. canonical
NB. ____________________________________________________________________

NB. canonical y     y: exercise slug. Returns the first hit of: git
NB.                 submodule, GitHub, configlet cache.
NB. x canonical y   x: dir that directly contains canonical-data.json.
NB.                 Only x is tried, with no fallback; y is ignored.
NB.                 An empty x behaves like the monad.
NB. Signals an error if nothing is found.
canonical=:{{
  if.     *@# r=. 'problem-specifications/exercises/' canonical_local y do.
  elseif. *@# r=. canonical_github y                                    do.
  elseif. *@# r=. (configlet_data_dir '') canonical_local y             do.
  else.
    ('Cannot locate ' , y , '/canonical-data.json (tried ./problem-specifications, GitHub, configlet cache)') 13!:8 (3)
  end.
  r
  :
  if. 0 = # x do. canonical y return. end.
  NB. custom path: the file must be directly inside x
  if. *@# r=. read_canonical x do.
  else.
    ('Cannot locate canonical-data.json in ' , x) 13!:8 (3)
  end.
  r
}}

NB. decode y   y: JSON text. Returns the decoded object (2-row boxed table).
NB. Signals an error if y is malformed or is not a JSON object.
decode=:{{
  try.
    assert. ((0~:L.) *. 2 = #) data=. dec_json y
  catch.
    'canonical-data.json: not a valid JSON object' 13!:8 (3)
  end.
  data
}}

NB. test extraction
NB. ____________________________________________________________________

NB. all_cases y   y: decoded canonical data (see decode).
NB. Returns the boxed list of every test, with nested 'cases' groups flattened.
all_cases=:{{
  NB. value stored under 'cases' at the top level
  tests_idx=. {::~ (1 , (<'cases') i.~ {.)

  NB. take the values, spread level-2 boxes, keep the 2-row tables
  NB. (JSON objects); recurse into nested 'cases' groups
  get_cases    =. $:^:((<'cases') e. {.)each @: (#~ 2 = # every) @: (<S:_1) @ tests_idx
  flatten_cases=. ([: ; (<^:(1 -.@-: #@$))each)^:_

  flatten_cases @: get_cases y
}}

NB. x drop_excluded y   x: boxed tests, y: exercise slug.
NB. Removes the tests whose uuid is marked `include = false` in
NB. exercises/practice/<y>/.meta/tests.toml (relative to the current dir).
drop_excluded=:{{
  toml =. hostpathsep 'exercises/practice/' , y , '/.meta/tests.toml'
  excl =. excluded_tests freads toml        NB. '' if the file is missing: nothing is excluded
  uuids=. ({: {~ (<'uuid') i.~ {.)every x
  x #~ uuids -.@e. excl
}}

NB. loading
NB. ____________________________________________________________________

NB. x load_exercise y   x: exercise dir or '' (see canonical), y: exercise slug.
NB. Returns a 2-row table: ('name';'tests') over the exercise name and the
NB. boxed list of tests, minus those excluded in tests.toml.
load_exercise=:{{
  data =. decode x canonical y
  name =. ;@({: {~ (<'exercise') i.~ {.) data
  tests=. all_cases data
  tests=. tests drop_excluded y
  (;:'name tests') ,: name ; <tests
}}

NB. public interface
NB. ____________________________________________________________________

NB. get_data y     y: exercise slug. Uses the standard providers (see canonical).
NB. x get_data y   x: dir that directly contains a custom canonical-data.json.
NB. Returns the table described in load_exercise.
NB. Signals an error if the slug is invalid or the data is not found.
get_data=:{{
  '' get_data y
  :
  'path slug'=. x;y
  if. -. valid_slug slug do. ('Invalid exercise slug: ' , slug) 13!:8 (3) end.
  path load_exercise slug
}}
