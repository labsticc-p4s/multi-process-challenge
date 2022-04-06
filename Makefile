TEXFILE=main
TEXFILE1=responseLetter

LATEXCMD=latexmk -f --synctex=1 -pdf

default: main response

main: 
	$(LATEXCMD) $(TEXFILE)

response: $(TEXFILE1).tex
	$(LATEXCMD) $(TEXFILE1)

clean:
	latexmk -c

clean.all: #clean
	latexmk -C
	rm -f ${TEXFILE}.bbl ${TEXFILE}.run.xml ${TEXFILE}.thm ${TEXFILE}.aux
	rm -f biblio.aux biblio.fdb_latexmk biblio.fls biblio.log

