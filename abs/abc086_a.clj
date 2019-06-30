(defn prod [a b]
  (if (-> (* a b)
          (rem 2)
          (zero?))
    "Even"
    "Odd"))

(-> (prod (read) (read))
    (println))
