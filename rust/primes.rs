fn main () {
    // let primes = [2, 3];
}

fn primes (n: i32, otherprimes: &[i32], i: i32) -> &[i32] {
    if i == 0 {
        return otherprimes;
    }
    let newprime = primefrom(n + 1, otherprimes);
    let allprimes = [newprime].iter().chain(otherprimes).collect::<[_]>(); // wot
    primes(&newprime + 1, &allprimes, i - 1)
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