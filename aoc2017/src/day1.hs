import Data.Char (digitToInt)

main::IO ()


part1 :: String -> Int
part1 (x:y:xs) = f x y + part1 (y:xs)
    where
      f x y = if x == y then (digitToInt x) else 0
part1 _ = 0


part2 :: String -> Int
part2 xs = sum [ valid v  (xs !! (rem (idx + ((length xs) `div` 2)) (length xs))) | (idx, v) <- zip [0::Int ..] xs]
    where
        valid x y = if x == y then (digitToInt x) else 0

main = do
    content <- fmap (filter (/= '\n')) (readFile "data/day1")
    let circularList = content ++ [head content] 
    let result1 = part1 circularList
    let result2 = part2 content
    putStrLn ("Part 1 result: " ++ (show result1))
    putStrLn ("Part 2 result: " ++ (show result2))
