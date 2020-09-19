use rand::prelude::*;

const TOTAL = 100;

fn main () {
    let mut rng = rand::thread_rng();

    
    let mut incirkle = 0;

    for _i in 0..TOTAL {
        if (sqrt(rng.gen().pow(2) + rng.gen().pow(2)) < 1) {
            incirkle += 1;
        }
    }

    let pi: f32 = total / incirkle;
    println!("{:.1}", pi);

    
}