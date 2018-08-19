.PHONY: example

NAME := tamakiii-sandbox-openscad-with-clojure
PORT := 9998

setup:
	docker build . -t $(NAME)

repl: setup
	docker run --rm -it -v $(CURDIR):/work -p $(PORT) $(NAME)

login:
	docker run --rm -it -v $(CURDIR):/work $(NAME) bash

example:
	cd example && lein run -m example.core/foo xxxx

clean:
	docker rm $(NAME)
