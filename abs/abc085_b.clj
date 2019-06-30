(ns abc085-b)

(->> (repeatedly (read) read)
     (set)
     (count)
     (println))
