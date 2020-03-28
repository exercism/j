readme-splice := config/exercise-readme-insert.md

track-requirements := \
	Makefile \
	config.json
#	bin/configlet \

default : track

# configlet binary
bin/configlet :
	mkdir -p bin
	./script/fetch-configlet

# build track
track : $(track-requirements)
	./bin/configlet generate .
	./bin/configlet fmt .
	./bin/configlet lint .

clean :
	find . -name "*~" -exec rm {} \;
	find . -name "*.html" -exec rm {} \;

.PHONY : track clean
