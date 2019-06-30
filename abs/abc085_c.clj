(ns abc085-c
  (:require [clojure.string :refer [join]]))

(def ^:const bills [10000 5000 1000])

(defn range-i [n]
  (range (inc n)))

(defn solve [n y]
  (->
   (for [a (range-i n)
         b (range-i (- n a))
         :let [c (- n a b)
               abc [a b c]]
         :when (= (apply + (mapv * bills abc)) y)]
     abc)
   first
   (or (repeat 3 -1))))

(->> (solve (read) (read))
     (join " ")
     (println))
