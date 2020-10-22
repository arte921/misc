fn main () {
    for i in -20..20 {
        for r in -60..60 {
            let r = r as f64 / -30.0;
            let i = i as f64 / 10.0;
            if inset(r, i) {
                print!("#");
            } else {
                print!(" ");
            }
        }
        print!("\n");
    }
}

fn inset (r: f64, i: f64) -> bool {
    mandelbrot(0.0, 0.0, r, i, 10000)
}

fn mandelbrot (p: f64, q: f64, a: f64, b: f64, i: i32) -> bool {/*
    if i == 0 {
        return true;
    }
    if infinite(p, q) {
        return false;
    }
    mandelbrot(a + p.powf(2.0), 2.0 * p * q + b, a, b, i - 1)*/

    let mut p = p;
    let mut q = q;

    for i in 0..10000 {
        if infinite(p, q) { 
            return false;
        }

        let t = p;

        p = a + p.powf(2.0) - q.powf(2.0);
        q = 2.0 * t * q + b;

    }

    true
}

// checks if absolute value < 2 it wanders off to infinity
fn infinite (r: f64, i: f64) -> bool {
   r.powf(2.0) + i.powf(2.0) > 4.0
}
