fn main () {
    // let primes = [2, 3];
}

fn primes (n: i32, otherprimes: &[i32], i: i32) -> &[i32] {
    if i == 0 {
        return otherprimes;
    }
    let prime = primefrom(n + 1, &otherprimes);
    primes(&prime + 1, [&otherprimes, &&[prime]].concat(), i - 1)
}

fn primefrom (n: i32, otherprimes: &[i32]) -> i32 {
    if isprime(n, otherprimes) {
        println!("{}", n);
        return n;
    }
    primefrom(n + 1, otherprimes)
}

fn isprime (n: i32, otherprimes: &[i32]) -> bool {
    !otherprimes.iter().any(|&prime| divides(n, prime))
}

fn divides (p: i32, q: i32) -> bool {
    p % q == 0
}