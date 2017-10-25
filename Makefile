# md2pdf converter
MD = pandoc -f markdown_github+footnotes+header_attributes+tex_math_dollars+compact_definition_lists+raw_tex+latex_macros -V documentclass=ltjarticle -V geometry:a4paper -V geometry:margin=3cm -V mainfont="Asana Math" -V linestretch=0.9 -V header-includes="\usepackage[version=3]{mhchem} \usepackage{url} \usepackage{wrapfig} \usepackage{graphicx}" --latex-engine=lualatex
.SUFFIXES: .md .pdf
.PHONY: all
all: README.pdf # list files to compile here 
.md.pdf: 
	$(MD) $< -o $@
