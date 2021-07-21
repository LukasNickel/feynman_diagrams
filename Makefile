%.pdf: %.tex
	latexmk $< -outdir=$(dir $<)
	latexmk -cd -c $<

%.svg: %.pdf
	inkscape --export-filename $@ $<

files = $(wildcard */*.tex)
svgs = $(files:.tex=.svg)
pdfs = $(files:.tex=.pdf)

all: $(pdfs) $(svgs)


