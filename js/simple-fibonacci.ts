export function fib(): number[] {
    let f: number = 0;
    let v: number = 0;
    let t: number = 1;

    let answers: number[] = [];
    
    for (let i: number = 0; i < 20; i++) {
        f = v + t;
        t = v;
        v = f;
        answers.push(f);
    }

    return answers;
}

