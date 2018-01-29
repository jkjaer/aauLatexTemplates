##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
PS=$(TEX:.tex=.ps)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.nav *.snm

pdflatex: aalborgtheme.tex
	pdflatex aalborgtheme.tex
	pdflatex aalborgtheme.tex
	pdflatex aalborgtheme.tex
	rm -f $(OTHER) $(PS)
clean:
	rm -f $(OTHER) $(PS)
