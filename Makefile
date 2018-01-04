.DELETE_ON_ERROR:
.SUFFIXES: .pdf .tex
.PHONY: clean install

include config.mk

FILES=banner.sty \
	lists.sty \
	brief.cls \
	colorsections.sty

TEX=pdflatex
EXAMPLES=banner-example.pdf \
		lists-examples.pdf \
		brief-example.pdf \
		colorsections-example.pdf

pdf: $(EXAMPLES)

.tex.pdf:
	$(TEX) $<
	$(TEX) $<

clean:
	rm -f *.aux *.log *.pdf *.out

install:
	mkdir -p $(PREFIX)
	cp $(FILES) $(PREFIX)

uninstall:
	cd $(PREFIX) && rm -f $(FILES)
