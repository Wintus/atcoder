{-# LANGUAGE BangPatterns #-}

import Control.Monad
import Control.Monad.Trans.State.Strict
import Data.Char (isSpace)
import Data.Maybe (fromJust)
import qualified Data.ByteString.Lazy.Char8 as B
import Data.List
import Data.Bits
--
type Parser a = StateT B.ByteString Maybe a

parseInt :: Parser Int
parseInt = StateT (B.readInt . B.dropWhile isSpace)

parseInt2 :: Parser (Int,Int)
parseInt2 = liftM2 (,) parseInt parseInt

parse :: Parser [(Int,Int)]
parse = do
    (n,m)<-parseInt2
    replicateM m parseInt2

main=do
    as <- fromJust.evalStateT parse <$> B.getContents
    print.length.merge.sort $ as

merge ((a1,b1):(a2,b2):as)
    | ma < mb = merge ((ma,mb):as)
    | otherwise = (a1,b1):merge ((a2,b2):as)
    where
        ma = max a1 a2
        mb = min b1 b2
merge ab = ab
