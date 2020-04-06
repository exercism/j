readme-splice := config/exercise-readme-insert.md

student-doc-targets := TESTS INSTALLATION RESOURCES LEARNING
student-docs := $(foreach doc,$(student-doc-targets),docs/$(doc).md)

track-requirements := \
	$(student-docs)

default : track

# build track
track : $(track-requirements)


docs/%.md : student-docs.org
	emacs $< --batch \
		--eval "(progn (require 'package)(package-initialize)(require 'org)(require 'ox-gfm))" \
		--eval "(progn (re-search-forward \"* $(@F:.md=)\") (org-gfm-export-to-markdown nil t nil))"
	mv $(<F:.org=.md) $@

clean :
	find . -name "*~" -exec rm {} \;
	find . -name "*.html" -exec rm {} \;

.PHONY : track clean
