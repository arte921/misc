divides :: Integer -> Integer -> Bool
divides a b = b `mod` a == 0

isprime :: Integer -> [Integer] -> Bool
isprime n otherprimes = not $ any (`divides` n) otherprimes

primefrom :: Integer -> [Integer] -> Integer
primefrom n otherprimes
    | isprime n otherprimes = n
    | otherwise = primefrom (n + 1) otherprimes

primes :: Integer -> [Integer] -> Integer -> [Integer]
primes n otherprimes i
    | i == 0 = otherprimes
    | otherwise = let newprime = primefrom n otherprimes in
        primes (newprime + 1) (newprime : otherprimes) (i - 1)

main = print $ reverse $ primes 2 [] 200