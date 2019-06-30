(defn min-lsb [ns]
  (->> ns
       (map #(Integer/numberOfTrailingZeros %))
       (apply min)))

(read-line) ;; n
(->> (-> (read-line)
         (.split " "))
     (map #(Integer/parseInt %))
     (min-lsb)
     (println))
