(ns owc.core
  (:require [scad-clj.scad :as scad]
            [scad-clj.model :as model]))

(def primitives
  (model/union
    (model/cube 100 100 100 :center true)
    (model/sphere 70)
    (model/cylinder 10 160)))

(def build
  (spit "primitives.scad"
    (scad/write-scad primitives)))
