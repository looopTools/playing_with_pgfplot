CC = pdflatex

MD = mkdir
RM = rm

OUT = pdfs
SRC = latex

PARAMS = -output-directory $(OUT)

all: setup basic

basic:
	$(CC) $(PARAMS) $(SRC)/basic.tex


setup:
	$(MD) $(OUT)

cleanup: 
	$(RM) $(OUT)/*.log  $(OUT)/*.aux
