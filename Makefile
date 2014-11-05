#TARGET = bare_conf_utf8
TARGET = bare_jrnl_compsoc
TEX = platex

all:
	$(TEX) $(TARGET)
#	bibtex $(TARGET)
#	$(TEX) $(TARGET)
#	$(TEX) $(TARGET)
	dvipdfm $(TARGET).dvi
	open $(TARGET).pdf

bb:
	extractbb images/*.pdf

clean:
	rm -fr *~ *.aux *.ps *.dvi *.log *.bbl *.blg
