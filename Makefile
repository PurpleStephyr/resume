all: build/resume.pdf

build/resume.pdf: resume.tex programming_languages.eps
	pdflatex --output-directory=build resume.tex
