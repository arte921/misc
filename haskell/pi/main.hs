incirkle :: [Int] -> Int -> Bool
incirkle point max = sum (map (^2) point) < max ^ 2

line :: Int -> Int -> Int
line r q = length $ filter (\p -> incirkle [p, q] r) [0..r]

inbox :: Int -> Int
inbox r = sum [line r q | q <- [0..r]]

ifdiv :: Int -> Int -> Float
ifdiv a b = (fromIntegral a) / (fromIntegral b)

boxpi :: Int -> Float
boxpi r = (inbox r * 4) `ifdiv` (r ^ 2)

main = print $ boxpi 1000