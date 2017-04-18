.DELETE_ON_ERROR:
.SUFFIXES: .pdf
.PHONY: clean install

include config.mk

FILES=banner.sty \
	  lists.sty \
	  brief.cls

TEX=pdflatex
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
	mkdir -p $(PREFIX)
	cp $(FILES) $(PREFIX)

uninstall:
	cd $(PREFIX) && rm -f $(FILES)
