#!/bin/bash
echo Cleaning old compilation files!

./cleaning.sh

echo Compiling thesis!



#pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex
pdflatex Fontana_thesis.tex
#Here think about biber compilation for bibliography
biber Fontana_thesis
#biber Fontana_thesis

#pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex
pdflatex Fontana_thesis.tex
#Creating the glossary section (list of acronyms and words)
makeglossaries Fontana_thesis

#Here think about makeindes compilation for indeces
makeindex Fontana_thesis.idx

#pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex
#pdflatex -synctex=1 -shell-escape -interaction=batchmode Fontana_thesis.tex

#pdflatex Fontana_thesis.tex
pdflatex Fontana_thesis.tex

echo Compilation is over!
