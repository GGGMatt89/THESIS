#!/bin/bash

echo Compiling thesis slides!

latexmk -xelatex -synctex=1 -shell-escape -interaction=batchmode Fontana_PhDThesis_slides.tex

#Here think about biber compilation for bibliography
#biber Fontana_thesis
#biber Fontana_thesis

#Creating the glossary section (list of acronyms and words)
#makeglossaries Fontana_thesis

#Here think about makeindes compilation for indeces
#makeindex Fontana_thesis.idx


echo Compilation is over!
