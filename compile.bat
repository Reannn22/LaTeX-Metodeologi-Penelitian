@echo off
del /f *.aux *.log *.out *.toc *.bbl *.blg
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
echo Compilation complete
