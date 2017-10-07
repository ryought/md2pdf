# pandoc : md => texを変換するコマンド
md2tex='(){ pandoc -t latex -f markdown_github+footnotes+header_attributes+tex_math_dollars+compact_definition_lists+raw_tex --latex-engine=lualatex --listings $1 -o $1.tex }'


md2pdf='(){ pandoc -s -f markdown_github+footnotes+header_attributes+tex_math_dollars+compact_definition_lists+raw_tex --latex-engine=lualatex --listings -V documentclass=ltjarticle -V geometry:margin=1in $1 -o $1.pdf }'
