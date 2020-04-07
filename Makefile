# /Applications/j901/bin/jconsole -js "load'main.ijs'" "verify_script 0"
student-doc-targets := ABOUT TESTS INSTALLATION RESOURCES LEARNING
jconsole:= jconsole

track-requirements := \
	$(foreach doc,$(student-doc-targets),docs/$(doc).md)

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
