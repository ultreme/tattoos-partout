ALL=book.docx book.epub book.pdf

all: $(ALL)

.PHONY: $(ALL)
$(ALL): book.md
	pandoc -V papersize:a5 $< -o $@

book.md:
	for e in *.jpg; do echo '<center>![]('"$$e"')</center>'; done > book.md
