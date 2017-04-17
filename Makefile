.DELETE_ON_ERROR:
.SUFFIXES: .pdf
.PHONY: clean

TEX=pdflatex
EXAMPLES=banner-example.pdf

pdf: $(EXAMPLES)

.tex.pdf:
	$(TEX) $<
	$(TEX) $<

clean:
	rm -f $(EXAMPLES)
