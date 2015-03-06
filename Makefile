.PHONY: all clean

all: invitations.pdf envelopes.pdf

invitations.pdf: invitations.tex generate_commands.py guests.csv
	if [ -e invitations.pdf ] ; then rm invitations.pdf ; fi
	latexmk -pdf -pdflatex='pdflatex -shell-escape' invitations.tex

envelopes.pdf: envelopes.tex generate_commands.py guests.csv
	if [ -e envelopes.pdf ] ; then rm envelopes.pdf ; fi
	latexmk -pdf -pdflatex='pdflatex -shell-escape' envelopes.tex
	pdf90 envelopes.pdf -o envelopes.pdf

guests.csv: guestlist.org
	rm guests.csv; echo -e "guests.csv\norgtbl-to-csv\n" | emacs guestlist.org --batch -f org-table-export --kill

clean:
	latexmk -C
	if [ -e *.pdf ] ; then rm *.pdf ; fi
