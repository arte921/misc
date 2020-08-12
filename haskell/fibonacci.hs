fibonacci :: Int -> Int

fibonacci f
    | f <= 0    = 1
    | otherwise = fibonacci(f - 1) + fibonacci(f - 2) 

main = do
    let result = fibonacci 3
        out = show result
    putStrLn out

