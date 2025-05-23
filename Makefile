top.pdf: top.dvi
	dvipdfmx -p a5 top.dvi

top.dvi: *.tex ref.euc.bib
	platex top.tex
	bibtex top
	platex top.tex
	platex top.tex

clean:
	rm top.dvi top.bbl top.pdf top.toc top.aux top.log
