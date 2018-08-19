NAME := tamakiii-sandbox-openscad-with-clojure

setup:
	docker build . -t $(NAME)

build: setup
	docker run --rm $(NAME)

login:
	docker run --rm -it $(NAME) bash

clean:
	docker rm $(NAME)
