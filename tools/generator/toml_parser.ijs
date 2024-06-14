load_toml         =. 1!:1 @: ([: < 'E:\OneDrive\Documentos\Cursos\Exercism\j\exercises\practice\' , '\.meta\tests.toml' ,~ ])
remove_comments   =. #~ '#' -.@= {.@>
include_flags     =. 'include *= *false *\r?'&rxeq
get_uuid          =. ((-.&('[ ]',CRLF)))L:0 @ {."1 @ >
get_exclude_tests =: (get_uuid f.) @: (#~ ([: +./ 'include *= *false *\r?'&rxeq&>)&>) @: (<;._1) @: (remove_comments f.) @: (<;._2) @: (load_toml f.)
