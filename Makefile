all: build/steph_kraemer_coverletter_resume.pdf

build/steph_kraemer_coverletter_resume.pdf: build/steph_kraemer_resume.pdf build/steph_kraemer_coverletter.pdf
	pdftk build/steph_kraemer_coverletter.pdf build/steph_kraemer_resume.pdf cat output build/steph_kraemer_coverletter_resume.pdf

build/steph_kraemer_resume.pdf: resume.tex
	pdflatex --output-directory=build --jobname steph_kraemer_resume resume.tex

build/steph_kraemer_coverletter.pdf: coverletter.tex
	pdflatex --output-directory=build --jobname steph_kraemer_coverletter coverletter.tex

clean:
	rm build/*
