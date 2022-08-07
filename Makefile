# -*- Makefile -*-
#
# Makefile for build presentation with pandoc

MDFILE    = src/legado-CEV.md
YAMLFILE  = config/configppt.yaml
TPLFILE   = config/beamer_tpl.latex
CSLFILE   = config/the-open-university-harvard.csl
HDRFILE   = config/extrastyle.tex
BIBFILE   = config/citations.bib
PDFFILE   = $(subst src/,,$(MDFILE:.md=.pdf))
SRCFORMAT = 'markdown+smart+link_attributes+implicit_figures'


all:
	@echo "Usar:"
	@echo "  make gen_beamer"

gen_beamer: $(MDFILE) $(YAMLFILE)
	pandoc -s -f $(SRCFORMAT) -t beamer \
	--toc \
	--number-section --shift-heading-level=0 --slide-level 2 \
	--pdf-engine=xelatex \
	--template=$(TPLFILE) \
	--include-in-header=$(HDRFILE) \
	--metadata-file=$(YAMLFILE) \
	--citeproc --csl=$(CSLFILE) --bibliography=$(BIBFILE) \
	-o $(PDFFILE) $(MDFILE)

clean:
	rm -f *~ config/*~ src/*~ $(PDFFILE)
