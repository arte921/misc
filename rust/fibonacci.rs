fn main() {
    fib (30, 1, 0);
}

fn fib (i: i32, f: i32, v: i32) -> i32 {
    if i == 0 {
        return f;
    }
    println!("{}", f);
    fib(i - 1, f + v, f)
}
