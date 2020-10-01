fn main () {
    fibonacci(30, 1, 0);
}

fn fibonacci (i: i32, f: i32, v: i32) -> i32 {
    if i == 0 {
        return f;
    }
    println!("{}", f);
    fibonacci(i - 1, f + v, f)
}