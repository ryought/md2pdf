#!/bin/bash

# md2pdf - markdown compiler into pdf typesetted with lualatex
# 
# dependency:
#  - pandoc
#  - lualatex
#  - watchman (>= 4.8)

# markdown -> pdf
process() {
  echo "processing $1 ..."
  pandoc -f markdown_github+footnotes+header_attributes+tex_math_dollars+compact_definition_lists+raw_tex+latex_macros \
    -V documentclass=ltjarticle \
    -V geometry:a4paper \
    -V geometry:margin=3cm \
    -V mainfont="Asana Math" \
    -V linestretch=1.0 \
    -V header-includes="\usepackage[version=3]{mhchem} \usepackage{url} \usepackage{wrapfig} \usepackage{graphicx}" \
    --latex-engine=lualatex $1 -o $1.pdf
}

# show usage
usage() {
  echo "Usage: $0 [-w] markdown.md" 1>&2
  exit 1
}

# option parse
while getopts wh OPT
do
  case $OPT in
    w) WATCH=true  # -w: enable watch mode
      ;;
    h) usage  # -h: show help
      ;;
    \?) usage
      ;;
  esac
done
shift $((OPTIND - 1))

# check if given source filename
if [ $# -ne 1 ]; then
  echo "error: not enough arguments"
  exit 1
fi 

if [ "$WATCH" ]; then
  echo 'watch mode'
  # run itself each time when file is updated
  # https://facebook.github.io/watchman/docs/watchman-make.html
  watchman-make -p "$1" --run "md2pdf $1"
else
  # single mode
  process $1
fi
