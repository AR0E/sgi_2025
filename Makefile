all:
	latexrun --bibtex-cmd=biber note

bibliography:
	bibgetter pull --file latex.out/*.aux --local biblio.bib

.PHONY: clean
clean:
	latexrun --clean-all

diff:
	git latexdiff $(COMMIT) main --main main.tex --output diff-main.pdf --ignore-makefile --run-biber
