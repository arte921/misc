use std::thread;

fn main () {
    let threada = thread::spawn(|| -> i32 {
        println!("apollo");
        5
    });
    
    println!("houston");

    let landing = threada.join().unwrap();
    println!("{}", landing);
}

