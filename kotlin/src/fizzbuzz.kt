fun fizzbuzz(max: Int) {
    for (i in 1..max) {
        println(when(0) {
            i % 15 -> "FizzBuzz"
            i % 3 -> "Fizz"
            i % 5 -> "Buzz"
            else -> i.toString()
        })
    }
}