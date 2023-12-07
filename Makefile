FILE=main

.PHONY: clean fast clean

fast:
	pdflatex -interaction=nonstopmode -halt-on-error $(FILE).tex 
	pdflatex -interaction=nonstopmode -halt-on-error $(FILE).tex
	bibtex $(FILE).aux
	pdflatex -interaction=nonstopmode -halt-on-error $(FILE).tex
	pdflatex -interaction=nonstopmode -halt-on-error $(FILE).tex
	make clean
	
clean:
	rm -rf *.aux *.bbl *.toc *.out *.log *.nls *.nlo \
               *.lof *.lot *.blg *.ilg *.synctex.gz
	rm -rf */*.aux */*.bbl */*.toc */*.out */*.log   \
               */*.nls */*.nlo */*.lof */*.lot */*.blg */*.ilg */*.synctex.gz
	rm -rf *~ */*~
