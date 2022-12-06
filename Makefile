.PHONY: examples

CC = xelatex
BIB = biber
CV_DIR = cv
CV_SRCS = $(shell find $(CV_DIR)/sections -name '*.tex')

cv-martin-loeper.pdf: $(CV_DIR)/main.tex $(CV_SRCS) $(CV_DIR)/references.bib
	cd $(CV_DIR); \
	$(CC) main.tex; \
	$(CC) main-us-version.tex; \
	$(BIB) main; \
	$(BIB) main-us-version; \
	$(CC) main.tex; \
	$(CC) main-us-version.tex; \
	cp main.pdf cv-martin-loeper.pdf; \
	cp main-us-version.pdf cv-us-martin-loeper.pdf

clean:
	rm -rf $(CV_DIR)/*.pdf
