incirkle :: [Int] -> Int -> Bool
incirkle point max = sum (map (^2) point) < max ^ 2

line :: Int -> Int -> Int
line n q = length $ filter (\p -> incirkle [p, q] n) [0..n]

inbox :: Int -> Int
inbox n = sum [line n q | q <- [0..n]]

ifdiv :: Int -> Int -> Float
ifdiv a b = (fromIntegral a) / (fromIntegral b)

boxpi :: Int -> Float
boxpi n = (inbox n * 4) `ifdiv` (n ^ 2)

main = print $ boxpi 1000