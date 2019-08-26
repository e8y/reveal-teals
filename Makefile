VERSION ?= devel

FILES = \
	teals/css/theme/*.css \
	teals/js/* \
	revealjs/css/*.css \
	revealjs/css/print/*.css \
	revealjs/js/*.js \
	revealjs/lib/js/*.js \
	revealjs/plugin/ \
	revealjs/LICENSE \
	highlightjs/src/styles/vs.css \
	highlightjs/LICENSE \
	template.html \
	README.md \
	LICENSE

RELEASEDIR = reveal-teals-$(VERSION)

all: submodules release

submodules: revealjs/.git highlightjs/.git
	git submodule update --init

release: $(RELEASEDIR).tar.gz $(RELEASEDIR).zip
	$(RM) -r $(RELEASEDIR)

$(RELEASEDIR): $(FILES)
	mkdir $(RELEASEDIR) 
	cp -r --parents $(FILES) $(RELEASEDIR)

$(RELEASEDIR).tar.gz: $(RELEASEDIR)
	tar czvf $@ $(RELEASEDIR)

$(RELEASEDIR).zip: $(RELEASEDIR)
	zip -r $@ $(RELEASEDIR)

clean:
	$(RM) $(RELEASEDIR).tar.gz $(RELEASEDIR).zip

.PHONY: all submodules release clean

