let f = 0
let v = 0
let t = 1

for (let i=1; i < 10; i++) {
    console.log(f)
    f = v + t
    t = v
    v = f
}