fn main() {
    let mut f: i32;
    let mut v: i32 = 0;
    let mut t: i32 = 1;
    for _i in 0..10 {
        f = v + t;
        t = v;
        v = f;
        println!("{}", f);
    }
}