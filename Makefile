#TARGET = bare_conf_utf8
TARGET = bare_jrnl_compsoc
TEX = platex
DATE = $(shell date +'%y%m%d_%H:%M:%S')


all:
	$(TEX) $(TARGET)
	bibtex $(TARGET)
	$(TEX) $(TARGET)
	$(TEX) $(TARGET)
	dvipdfmx $(TARGET).dvi

bb:
	extractbb images/*.pdf

clean:
	rm -fr *~ *.aux *.ps *.dvi *.log *.bbl *.blg
