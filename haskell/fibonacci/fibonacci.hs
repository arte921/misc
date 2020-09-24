fibloop v f i
    | i == 0 = f
    | otherwise = fibloop f (f + v) (i - 1)

fib n = fibloop 0 1 n

main = putStrLn $ show (map fib [0..30])