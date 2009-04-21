.PHONY	: all clean

%.pdf	: %.ly
	lilypond $<

clean	:
	rm -f *.pdf *.ps *.png *.log *.mid *.midi *~
