import Data.List 


part1 :: [[Integer]] -> Integer
part1 rows = sum . map minmax $ rows
  where
    minmax :: [Integer] -> Integer
    minmax xs = (maximum xs) - (minimum xs)

part2 :: [[Integer]] -> Integer
part2 rows = sum $ map (findDivisor . reverseSort) $ rows 
  where
    findDivisor :: [Integer] -> Integer
    findDivisor xs = tryFrom xs
      where
        tryFrom [] = -1
        tryFrom remaining = if (divisible remaining /= -1) then (divisible remaining) else tryFrom (drop 1 remaining)

    divisible :: [Integer] -> Integer
    divisible [x] = -1
    divisible (x:y:xs) = if (rem x y == 0) then x `div` y else divisible (x:xs)

    reverseSort :: [Integer] -> [Integer]
    reverseSort xs = reverse . sort $ xs

main = do
    content <- map ( map read . words ) . lines <$> readFile("data/day2")
    let result1 = part1 content
    let result2 = part2 content
    putStrLn ("Part 1 Result: " ++ (show result1)) 
    putStrLn ("Part 2 Result: " ++ (show result2))
