main.pdf: main.tex ./Chapters/*
	pdflatex --shell-escape main.tex
	biber main
	pdflatex --shell-escape main.tex
	pdflatex --shell-escape main.tex

clean:
	rm main.pdf *.aux *.blg *.log *.bbl *.toc *.out
