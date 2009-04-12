.PHONY	: all clean

%.pdf	: %.ly
	lilypond $<

clean	:
	rm -f *.pdf *.ps *.log *.mid *.midi *~
