DOCS=index biography publication

JDOCS=$(addsuffix .jemdoc, $(DOCS))

.PHONY: update

PYTHON ?= python3

update: $(JDOCS)  MENU; for i in $(JDOCS); do TZ=Asia/Shanghai $(PYTHON) jemdoc.py -c mysite.conf $$i || exit 1; done; echo 'update done.'

.PHONY: clean

clean: ; rm -f *.html; echo 'html files cleaned.'

