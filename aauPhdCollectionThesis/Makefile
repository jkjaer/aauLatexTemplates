##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.out *.thm *.ps *.idx *.ilg *.ind *.tdo

pdflatex: master.tex
	pdflatex --synctex=1 master.tex
	bibtex introduction/introduction
	bibtex papers/paperA/paperA
	bibtex papers/paperB/paperB
	pdflatex --synctex=1 master.tex
	pdflatex --synctex=1 master.tex
	rm -f $(OTHER) $(PS)
	(cd introduction && rm -f $(OTHER) $(PS))
	(cd papers/* && rm -f $(OTHER) $(PS))
clean:
	rm -f $(OTHER) $(PS)
	(cd introduction && rm -f $(OTHER) $(PS))
	(cd papers/* && rm -f $(OTHER) $(PS))
