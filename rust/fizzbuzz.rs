fn main () {
    for i in 0..100 {
        println!("{}", fizzbuzz(i));
    }
}

fn fizzbuzz (n: i32) -> &str {
    if divides(n, 15) {
        return "FizzBuzz"
    }
    if divides(n, 5) {
        return "Buzz"
    }
    if divides(n, 3) {
        return "Fizz"
    }
    n.to_string()
}

fn divides (p: i32, q: i32) -> bool {
    p % q == 0
}