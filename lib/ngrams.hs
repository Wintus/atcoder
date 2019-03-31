import Data.List

ngrams n = (!! n) . transpose . map inits . tails

ngrams' n l = take (length l - (n - 1)) . map (take n) . tails $ l
