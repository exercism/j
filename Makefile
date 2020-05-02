student-doc-targets := ABOUT TESTS INSTALLATION RESOURCES LEARNING
J := jconsole
JTR_REQS := j j-convert-pjson bash-minimal
GUIX := ~/guix/pre-inst-env guix

track-requirements := \
	$(foreach doc,$(student-doc-targets),docs/$(doc).md)

track : $(track-requirements)

docs/%.md : student-docs.org
	emacs $< --batch \
		--eval "(progn (require 'package)(package-initialize)(require 'org)(require 'ox-gfm))" \
		--eval "(progn (re-search-forward \"* $(@F:.md=)\") (org-gfm-export-to-markdown nil t nil))"
	mv $(<F:.org=.md) $@

run-verify :
	$(J) main.ijs -js "verify''"

test-runner-docker :
	$(GUIX) pack -r $@ -f docker $(JTR_REQS) # create gc root (-r)

clean :
	find . -name "*~" -exec rm {} \;
	find . -name "*.html" -exec rm {} \;

.PHONY : track clean run-verify
