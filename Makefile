TEXFILE=1-main
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
	#rm -f $(TEXFILE).{pdf,dvi}
	#rm -Rf $(TEXFILE1).pdf
