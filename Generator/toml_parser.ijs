toml =: 1!:1 < 'E:\OneDrive\Documentos\Cursos\Exercism\j\exercises\practice\leap\.meta\tests.toml'
remove_comments=: #~ '#' -.@= {.@>
find_include_flags=: #~ ([: +./ e.&(<'include=false') +. e.&(<'include=false', CR))every  NB. Confirm EOL characters
(-.&'[]')L:0 {."1 > find_include_flags <;._1 remove_comments <;._2 toml
