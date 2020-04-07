.PHONY : test

jconsole:= /Applications/j901/bin/jconsole

test : test.ijs
	$(jconsole) -js "require'general/unittest'" "echo unittest'test.ijs'" "exit 0"
