fn main () {
    for i in -20..20 {
        for r in -20..20 {
            let r = r as f64 / -10.0;
            let i = i as f64 / 10.0;
            if inset(r, i) {
                print!("###");
            } else {
                print!("   ");
            }
        }
        print!("\n");
    }
}

fn inset (r: f64, i: f64) -> bool {
    mandelbrot(0.0, 0.0, r, i, 100)
}

fn mandelbrot (p: f64, q: f64, a: f64, b: f64, i: i32) -> bool {
    if i == 0 {
        return true;
    }
    if infinite(p, q) {
        return false;
    }
    mandelbrot(a + p.powf(2.0), 2.0 * p * q + b, a, b, i - 1)
}

// checks if absolute value < 2 it wanders off to infinity
fn infinite (r: f64, i: f64) -> bool {
   r.powf(2.0) + i.powf(2.0) > 4.0
}
