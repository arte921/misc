divides :: Integer -> Integer -> Bool
divides a b = a `mod` b == 0

isprime :: Integer -> [Integer] -> Bool
isprime testnumber otherprimes = not (any (testnumber `divides`) otherprimes)

primefrom :: Integer -> [Integer] -> Integer
primefrom n otherprimes
    | isprime n otherprimes = n
    | otherwise = primefrom (n + 1) otherprimes

primes :: Integer -> [Integer] -> Integer -> [Integer]
primes n otherprimes i
    | n <= 1 = 2
    | i == 0 = otherprimes
    | otherwise = do
        let newprime = primefrom n otherprimes
        primes (newprime + 1) (otherprimes ++ [newprime]) (i - 1)

main = putStrLn (show (primes 2 [] 10))
-- main = putStrLn (show (isprime 41 [3, 5, 7]))