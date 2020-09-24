divides a b = a `mod` b == 0

fizzbuzz i
    | i `divides` 15 = "FizzBuzz"
    | i `divides` 3 = "Fizz"
    | i `divides` 5 = "Buzz"
    | otherwise = show i

main = putStrLn $ unlines (map fizzbuzz [1..100])