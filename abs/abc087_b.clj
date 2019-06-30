(ns abc087-b)

(defn comb [a b c x]
  (let [coins [500 100 50]
        [a b c] (map inc [a b c])]
    (for [i (range a)
          j (range b)
          k (range c)
          :let [total (apply + (mapv * coins [i j k]))]
          :when (= total x)]
      total)))

(->> (repeatedly 4 read)
     (apply comb)
     count
     println)
