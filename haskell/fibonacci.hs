fibonacci :: Int -> Int

fibonacci f = 
    if f <= 0
        then 1
        else fibonacci(f - 1) + fibonacci(f - 2)

main = do
    let result = fibonacci 10
    let out = show result
    putStrLn out

