MARKDOWNFILE = paper_body.md
MARKDOWNOUTPUT = paper_body.tex
MAINTEXFILE = $(MARKDOWNFILE:_body.md=.tex)
BIBFILES = $(MAINTEXFILE:.dvi=.bib)
AUXFILE = $(MAINTEXFILE:.tex=)

md: clean md2tex pdf_bibtex

md2tex: 
				pandoc --from markdown --to latex -o $(MARKDOWNOUTPUT) $(MARKDOWNFILE)	

pdf_bibtex: 
				pdflatex $(MAINTEXFILE) && bibtex $(AUXFILE) && pdflatex $(MAINTEXFILE) && pdflatex $(MAINTEXFILE)

clean: 
				rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg	\
				*.inx *.toc *.out $(DVIFILES) *~
