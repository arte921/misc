palindromize :: [a] -> [a]
palindromize [] = []
palindromize xs = xs ++ reverse (init xs)

foo :: Int -> String
foo n = unlines [unwords $ palindromize $ map show [1..m] | m <- [1..n]]

bar :: Int -> String
bar n = unlines $ palindromize [unwords $ map show [1..m] | m <- [1..n]]

main = putStrLn $ foo 5