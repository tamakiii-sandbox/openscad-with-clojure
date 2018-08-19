NAME := tamakiii-sandbox-openscad-with-clojure
PORT := 9998

setup:
	docker build . -t $(NAME)

repl: setup
	docker run --rm -it -v $(CURDIR):/work -p $(PORT) $(NAME)

login:
	docker run --rm -it -v $(CURDIR):/work $(NAME) bash

clean:
	docker rm $(NAME)
