import Data.Char (digitToInt)

main::IO ()


day1part1 :: (Char -> Char -> Int) -> String -> Int
day1part1 f (x:y:xs) = f x y + day1part1 f (y:xs)
day1part1 _ _ = 0


main = do
    contents <- fmap (filter (/= '\n')) (readFile "data/day1")
    let result = day1part1  (\x y -> if x == y then (digitToInt x) else 0) contents
    let bonus = if head contents == last contents then digitToInt(head contents) else 0
    putStrLn ("Part 1 result: " ++ show (result + bonus))
