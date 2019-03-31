strictList []     = []
strictList (x:xs) = x `seq` x : strictList xs
