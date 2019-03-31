main = do
  n <- readLn
  line <- getLine
  let ns = map read . words $ line
  print $ sum ns - n
