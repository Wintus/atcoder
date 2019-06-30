(ns abc088-b)

(defn game [ns]
  (->> ns
       (sort >)
       (mapv * (cycle [1 -1]))
       (apply +)))

;; (defn read-longs []
;;   (map #(Long/parseLong %)
;;        (.split (read-line) " ")))

;; (read-line)
;; (->> (read-longs)
;;      game
;;      println)

(let [n (read)
      ns (repeatedly n read)]
  (->> ns
       game
       println))
