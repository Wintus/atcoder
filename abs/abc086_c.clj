(ns abc086-c)

(defn abs [n]
  (Math/abs n))

(defn solve [moves]
  (->> moves
       (cons [0 0 0])
       (partition 2 1)
       (every?
        (fn [[p0 p1]]
          (let [[dt dx dy] (mapv - p1 p0)
                dist (+ (abs dx) (abs dy))
                d (- dt dist)]
            (and (>= d 0) (even? d)))))))

(defn read-longs []
  (map #(Long/parseLong %)
       (.split (read-line) " ")))

;; (defn read-ints []
;;   (map #(Integer/parseInt %)
;;        (.split (read-line) " ")))

;; main
(let [n (Long/parseLong (read-line))
      moves (repeatedly n read-longs)]
  (println
   (if (solve moves)
     "Yes"
     "No")))
