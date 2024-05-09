NAME = DP_Moravec_Vojtech_2024.pdf
SRC_NAME = ctufit-thesis

.PHONY:	all pdf open debug clean $(NAME)

all: pdf

pdf:
	arara ./$(SRC_NAME).tex
	mv ./$(SRC_NAME).pdf ./$(NAME)
	rm -Rf text/*.toc text/*.xml text/*.out text/*.log text/*.lof text/*.blg text/*.bcf text/*.bbl text/*.aux _minted-ctufit-thesis
	rm -f ./$(SRC_NAME).aux ./$(SRC_NAME).bbl ./$(SRC_NAME).bcf ./$(SRC_NAME).blg ./$(SRC_NAME).lof ./$(SRC_NAME).log ./$(SRC_NAME).lol ./$(SRC_NAME).lot ./$(SRC_NAME).out ./$(SRC_NAME).run.xml ./$(SRC_NAME).toc ./$(SRC_NAME).dvi ./$(SRC_NAME).fls ./$(SRC_NAME).xdv ./$(SRC_NAME).fdb_latexmk


open:
	@if [ -f ./$(NAME) ]; then \
		open ./$(NAME); \
	else \
		arara ./$(SRC_NAME).tex; \
		mv ./$(SRC_NAME).pdf ./$(NAME); \
		rm -Rf text/*.toc text/*.xml text/*.out text/*.log text/*.lof text/*.blg text/*.bcf text/*.bbl text/*.aux _minted-ctufit-thesis; \
		rm -f ./$(SRC_NAME).aux ./$(SRC_NAME).bbl ./$(SRC_NAME).bcf ./$(SRC_NAME).blg ./$(SRC_NAME).lof ./$(SRC_NAME).log ./$(SRC_NAME).lol ./$(SRC_NAME).lot ./$(SRC_NAME).out ./$(SRC_NAME).run.xml ./$(SRC_NAME).toc ./$(SRC_NAME).dvi ./$(SRC_NAME).fls ./$(SRC_NAME).xdv ./$(SRC_NAME).fdb_latexmk; \
		open ./$(NAME); \
	fi

debug: clean
	latexmk -xelatex --shell-escape ./$(SRC_NAME)
	mv ./$(SRC_NAME).pdf ./$(NAME)
	rm -Rf text/*.toc text/*.xml text/*.out text/*.log text/*.lof text/*.blg text/*.bcf text/*.bbl text/*.aux _minted-ctufit-thesis
	rm -f ./$(SRC_NAME).aux ./$(SRC_NAME).bbl ./$(SRC_NAME).bcf ./$(SRC_NAME).blg ./$(SRC_NAME).lof ./$(SRC_NAME).log ./$(SRC_NAME).lol ./$(SRC_NAME).lot ./$(SRC_NAME).out ./$(SRC_NAME).run.xml ./$(SRC_NAME).toc ./$(SRC_NAME).dvi ./$(SRC_NAME).fls ./$(SRC_NAME).xdv ./$(SRC_NAME).fdb_latexmk


clean:
	rm -Rf text/*.toc text/*.xml text/*.out text/*.log text/*.lof text/*.blg text/*.bcf text/*.bbl text/*.aux _minted-ctufit-thesis
	rm -f ./$(SRC_NAME).aux ./$(SRC_NAME).bbl ./$(SRC_NAME).bcf ./$(SRC_NAME).blg ./$(SRC_NAME).lof ./$(SRC_NAME).log ./$(SRC_NAME).lol ./$(SRC_NAME).lot ./$(SRC_NAME).out ./$(SRC_NAME).run.xml ./$(SRC_NAME).toc ./$(SRC_NAME).dvi ./$(SRC_NAME).fls ./$(SRC_NAME).xdv ./$(SRC_NAME).fdb_latexmk
