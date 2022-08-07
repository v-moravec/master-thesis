NAME = DP_Moravec_Vojtech_2024.pdf
SRC_NAME = ctufit-thesis

.PHONY:	all pdf open debug clean $(NAME)

all: pdf

pdf:
	arara ./$(SRC_NAME).tex
	mv ./$(SRC_NAME).pdf ./$(NAME)

open: pdf
	cmd.exe /C start $(NAME)

debug: clean
	latexmk -xelatex --shell-escape ./$(SRC_NAME)
	mv ./$(SRC_NAME).pdf ./$(NAME)

clean:
	rm -Rf text/*.toc text/*.xml text/*.out text/*.log text/*.lof text/*.blg text/*.bcf text/*.bbl text/*.aux _minted-ctufit-thesis
	rm ./$(SRC_NAME).aux ./$(SRC_NAME).bbl ./$(SRC_NAME).bcf ./$(SRC_NAME).blg ./$(SRC_NAME).lof ./$(SRC_NAME).log ./$(SRC_NAME).lol ./$(SRC_NAME).lot ./$(SRC_NAME).out ./$(SRC_NAME).run.xml ./$(SRC_NAME).toc
