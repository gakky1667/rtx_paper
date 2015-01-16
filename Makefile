#TARGET = bare_conf_utf8
TARGET = bare_jrnl_compsoc
TEX = platex
DATE = $(shell date +'%y%m%d_%H:%M:%S')


all:
	touch $(TARGET).pdf
	mv $(TARGET).pdf old/$(DATE).pdf


	$(TEX) $(TARGET)
	bibtex $(TARGET)
	$(TEX) $(TARGET)
	$(TEX) $(TARGET)
	dvipdfm $(TARGET).dvi
	open $(TARGET).pdf

bb:
	extractbb images/*.pdf

clean:
	rm -fr *~ *.aux *.ps *.dvi *.log *.bbl *.blg
