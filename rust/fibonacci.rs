const ITERATIONS: u32 = 10;

fn main() {
	fib(ITERATIONS, 0, 1);
}

fn fib (i: u32, f: u32, v: u32) -> u32 {
	if i == 0 {
		return i;
	}
	println!("f({}): {}", ITERATIONS - i, f);
	fib (i - 1, f + v, f)
}
