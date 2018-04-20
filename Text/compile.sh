#!/bin/bash

echo Compiling thesis!

pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex

#Here think about biber compilation for bibliography
biber Fontana_thesis
biber Fontana_thesis

pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex

#Here think about makeindes compilation for indeces
makeindex Fontana_thesis.idx

pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex
pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex
