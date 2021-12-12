OPTIONS = -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make

.PHONY: article.pdf presentation.pdf all clean

all: article.pdf presentation.pdf

article.pdf: main.article.tex
	latexmk $(OPTIONS) $<
	mv main.article.pdf $@

presentation.pdf: main.beamer.tex
	latexmk $(OPTIONS) $<
	mv main.beamer.pdf $@

clean:
	latexmk -CA
	rm main.beamer.nav
	rm main.beamer.snm

