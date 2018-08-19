.PHONY: example

NAME := tamakiii-sandbox-openscad-with-clojure
PORT := 9998
RUN  := docker run --rm -it -v $(CURDIR):/work

setup:
	docker build . -t $(NAME)

repl: setup
	$(RUN) -p $(PORT) $(NAME)

login:
	$(RUN) $(NAME) bash

build:
	# Exception in thread "main" java.lang.NullPointerException, compiling:(/tmp/form-init7671173881773440248.clj:1:73)
	lein run -m owc.core/build

example:
	cd example && lein run -m example.core/foo xxxx

clean:
	docker rm $(NAME)
