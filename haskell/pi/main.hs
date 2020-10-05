incirkle :: [Int] -> Int -> Bool
incirkle point max = sum [x^2 | x <- point] < max ^ 2

line :: Int -> Int -> Int
line r q = length $ [p | p <- [0..r], incirkle [p, q] r] 

inbox :: Int -> Int
inbox r = sum [line r q | q <- [0..r]]

ifdiv :: Int -> Int -> Float
ifdiv a b = (fromIntegral a) / (fromIntegral b)

boxpi :: Int -> Float
boxpi r = (inbox r * 4) `ifdiv` (r ^ 2)

main = print $ boxpi 10000
