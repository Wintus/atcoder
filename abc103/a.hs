import Data.List

main = do
  line <- getLine
  let ns = sort . map read . words $ line
  let diff = zipWith (flip (-))
  let cost = sum $ ns `diff` (tail ns)
  print cost
