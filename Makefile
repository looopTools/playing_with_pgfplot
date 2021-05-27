CC = pdflatex

MD = mkdir
RM = rm

OUT = pdfs
SRC = latex

PARAMS = -output-directory $(OUT)

all: setup basic basic_with_markers bar_plot

basic:
	$(CC) $(PARAMS) $(SRC)/basic

basic_with_markers:
	$(CC) $(PARAMS) $(SRC)/basic_with_marker

bar_plot:
	$(CC) $(PARAMS) $(SRC)/bar_plot


setup:
	$(MD) 	-p $(OUT)


cleanup: 
	$(RM) $(OUT)/*.log  $(OUT)/*.aux
