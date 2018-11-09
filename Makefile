all: clean install

install:
	mkdir -p output
	mkdir -p build
	latexmk -pdf -bibtex -outdir=./build -cd src/thesis.tex

clean:
	rm -f output/* build/*
	find . -iname "*~" -exec rm '{}' ';'
