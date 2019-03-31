shiftL str = tail str ++ [head str]
loop str = take n $ iterate shiftL str
  where n = length str

main = do
  s <- getLine
  t <- getLine
  let b = elem t $ loop s
  putStrLn $ if b then "Yes" else "No"
