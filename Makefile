# md2pdf converter
MD = pandoc -f markdown_github+footnotes+header_attributes+tex_math_dollars+compact_definition_lists+raw_tex  --listings -V documentclass=ltjarticle -V geometry:a4paper -V geometry:margin=3cm -V mainfont="Asana Math" -V linestretch=1.0 -V header-includes="\usepackage[version=3]{mhchem} \usepackage{url} \usepackage{wrapfig}" --latex-engine=lualatex

TARGETS :=  $(wildcard *.md)

.PHONY: all
all: $(TARGETS).pdf

%.md.pdf: %.md
	$(MD) $< -o $@
