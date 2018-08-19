FROM clojure:lein-2.8.1

WORKDIR /work
COPY project.clj /work

RUN lein deps
CMD lein run
