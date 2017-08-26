top.pdf: top.dvi
	dvipdfmx -p a5 top.dvi

top.dvi: *.tex ref.euc.bib
	platex -kanji=euc top.tex
	bibtex top
	platex -kanji=euc top.tex
	platex -kanji=euc top.tex

clean:
	rm top.dvi top.bbl top.pdf
