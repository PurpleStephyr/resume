all: build/coverletter_resume.pdf

build/coverletter_resume.pdf: build/resume.pdf build/coverletter.pdf
	pdftk build/coverletter.pdf build/resume.pdf cat output build/coverletter_resume.pdf

build/resume.pdf: resume.tex programming_languages.eps
	pdflatex --output-directory=build resume.tex

build/coverletter.pdf: coverletter.tex
	pdflatex --output-directory=build coverletter.tex

clean:
	rm build/*
