var fizz = false
var buzz = false

fun fizzbuzz(max: Int) {
    for (i in 1..max) {
        reset()

        fizz = i % 3 == 0
        buzz = i % 5 == 0

        if (fizz && buzz) {
            println("FizzBuzz")
        } else if (fizz) {
            println("Fizz")
        } else if (buzz) {
            println("Buzz")
        } else {
            println(i.toString())
        }
    }
}

fun reset() {
    fizz = false
    buzz = false
}