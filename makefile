DOCS=index biography publication

JDOCS=$(addsuffix .jemdoc, $(DOCS))

.PHONY: update

update: $(JDOCS)  MENU; for i in $(JDOCS); do python jemdoc.py $$i; done; echo 'update done.'

.PHONY: clean

clean: ; rm -f *.html; echo 'html files cleaned.'

