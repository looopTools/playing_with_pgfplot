CC = pdflatex

MD = mkdir
RM = rm

OUT = pdfs
SRC = latex

PARAMS = -output-directory $(OUT)

all: setup basic basic_with_markers

basic:
	$(CC) $(PARAMS) $(SRC)/basic.tex

basic_with_markers:
	$(CC) $(PARAMS) $(SRC)/basic_with_marker.tex


setup:
	$(MD) 	-p $(OUT)


cleanup: 
	$(RM) $(OUT)/*.log  $(OUT)/*.aux
