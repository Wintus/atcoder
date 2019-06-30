(ns abc081-a)

(defn count-1s [s]
  (->> s
       (filter #(= \1 %))
       (count)))

(->> (read-line)
     (count-1s)
     (println))
