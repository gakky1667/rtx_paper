#TARGET = bare_conf_utf8
TARGET = bare_jrnl_compsoc
TEX = platex
DATE=old/`date +'%y%m%d%_H:%M:%S'`

patch_txt_exists := $(shell find -name $(TARGET).pdf)


all:
	touch $(TARGET).pdf
	mv $(TARGET).pdf $(DATE).pdf


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
