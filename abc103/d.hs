import Control.Monad
import Data.List

-- TODO: strict
solve = foldl' f (0, 0)
  where
    f (n, c) [a, b] = if a < n then (n, c) else (b, 1 + c)

readN = map read . words <$> getLine

main = do
  [n, m] <- readN
  rs <- replicateM m readN
  print . snd . solve . sortOn last $ rs
