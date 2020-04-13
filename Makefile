ALL=book.docx book.epub book.pdf

all: $(ALL)

.PHONY: $(ALL)
$(ALL): README.md
	pandoc -V papersize:a5 $< -o $@

README.md: Makefile images/
	for e in images/*.jpg; do echo '![]('"$$e"')'; echo; done > $@
