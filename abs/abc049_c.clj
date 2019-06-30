(ns abc049-c
  (:require [clojure.string :refer [ends-with?]]))

(defn solve "reversed greedy" [s]
  (let [suffixes #{"dream" "dreamer" "erase" "eraser"}]
    (->>
     (loop [s s]
       (let [suffix (first (filter #(ends-with? s %) suffixes))
             s (subs s 0 (- (count s) (count suffix)))]
         (if suffix (recur s) s)))
     (empty?))))

(println
 (if (solve (read-line))
   "YES"
   "NO"))
