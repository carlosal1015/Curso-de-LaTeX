# This work is licensed under a Creative Commons Attribution 4.0
# International License  (CC-BY)


RNW = \
	01_intro.rnw \
	02_compilation.rnw \
	03_setup.rnw \
	04_tidy.rnw \
	05_machine_learning.rnw \
	06_tikz.rnw


TEXDERIVED = ${RNW:%.rnw=%.tex} 

TEX = $(TEXDERIVED) 



PDF = ${TEX:%.tex=%.pdf}


all: ${PDF}


%.pdf:  %.tex  
	pdflatex $*
	- bibtex $*
	pdflatex $*
	- while (grep -q '^LaTeX Warning: Label(s) may have changed' $*.log) \
	do  pdflatex $*; done


%.tex:	%.rnw 
	Rscript -e "library('knitr'); knit('$<')"


clean:
	$(RM) *.aux *.bbl *.dvi *.log *.out *.toc *.blg *.lof *.lot \
	*.eps  *.ps *.lol *.tex *.synctex.gz *.zip *-tikzDictionary
	$(RM) -r figure ??_figures *~



distclean: clean
	rm -f ${PDF}

zip:  all clean
	cd ..; \
	zip -r  knitr-workshop.zip workshop \
	-x '*~' -x '*.tgz' -x '*.zip' -x '*/CVS' -x '*/CVS/*'; \
	mv knitr-workshop.zip workshop
