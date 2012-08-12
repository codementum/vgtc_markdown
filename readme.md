Dependencies
----------------
- [pandoc](http://johnmacfarlane.net/pandoc/)
- pdflatex, bibtex (of course)

Setup
----------------
- make the dir where you want to write your paper
- ```git clone https://github.com/codementum/vgtc_markdown.git```

Usage
----------------
- Make your changes in paper\_body.md (do not add an introduction section).
- Modify paper.bib, add figs, etcetera
- Compile to pdf with ```make``` (also runs bibtex)
- (optional) Get rid of excess files with ```make clean```

Note, pdflatex is used, so the resulting pdf may not be acceptable for final publications. 
