absolute r i = sqrt(r^2 + i^2)

inset r i = mandelbrot 0 0 r i 1000

mandelbrot p q a b i
    | i == 0 = True
    | absolute p q > 2 = False
    | otherwise = mandelbrot (a + p^2) (2 * p * q + b) a b (i - 1)

ascci True = "#"
ascci _ = " "

main = putStrLn $ unlines [unwords [ascci (inset r i) | r <- [-2,-1.95..2]] | i <- [-2,-1.7..2]]