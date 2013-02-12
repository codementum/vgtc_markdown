markdown = body.md
tex = $(markdown:.md=.tex)
head = vgtc.tex
bib = $(head:.tex=.bib)
aux = $(head:.tex=.aux)

md: clean md2tex pdf_bibtex

md2tex: 
				pandoc --from markdown --to latex -o $(tex) $(markdown)	

pdf_bibtex: 
				pdflatex $(head) && bibtex $(aux) && pdflatex $(head) && pdflatex $(head)

clean: 
				rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg	\
				*.inx *.toc *.out $(tex) *~
