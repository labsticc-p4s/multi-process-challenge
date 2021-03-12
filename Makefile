TEXFILE=1-Main

LATEXCMD=latexmk -f --synctex=1 -pdf

all: main 

main: 
	$(LATEXCMD) $(TEXFILE)

clean:
	rm -Rf *.log *.aux *~ *.toc *.brf *.bbl *.blg *.ps *.fdb_latexmk \
	*.nav *.out *.snm *.vrb *.pag auto *.maf *.mtc *.mtc0 *.fls *.synctex.gz

clean.all: clean
	rm -f $(TEXFILE).{pdf,dvi}
