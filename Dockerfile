FROM clojure:lein-2.8.1

WORKDIR /work
COPY project.clj /work

RUN apt update && apt install -y make
RUN lein deps
CMD lein repl :start :port 9998
