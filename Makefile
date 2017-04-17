.DELETE_ON_ERROR:
.SUFFIXES: .pdf
.PHONY: clean install

TEX=pdflatex
FILES=banner.sty \
	  lists.sty \
	  brief.cls

PREFIX=$(HOME)/texmf

EXAMPLES=banner-example.pdf \
		 lists-examples.pdf \
		 brief-example.pdf

pdf: $(EXAMPLES)

.tex.pdf:
	$(TEX) $<
	$(TEX) $<

clean:
	rm -f *.aux *.log *.pdf

install:
	mkdir -p $(PREFIX)/tex/latex/custom/
	cp $(FILES) $(PREFIX)/tex/latex/custom/

uninstall:
	cd $(PREFIX)/tex/latex/custom/ && rm -r $(FILES)
