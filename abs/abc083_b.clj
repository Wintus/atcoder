(ns abc083-b)

(defn digits
  ([n] (digits n 10))
  ([n base]
   (->> n
        (iterate #(quot % base))
        (take-while pos?)
        (mapv #(mod % base))
        rseq)))

(defn digits-sum [n]
  (apply + (digits n)))

(defn some-sums [n a b]
  (apply +
         (for [i (range 1 (inc n))
               :let [sum (digits-sum i)]
               :when (<= a sum b)]
           i)))

(defn longs []
  (map #(Long/parseLong %)
       (.split (read-line) " ")))

(println (apply some-sums (longs)))
