read' = map read . words <$> getLine

main = do
  ns <- read'
  print $ sum ns
