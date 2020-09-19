import java.math.BigInteger


fun fibonacci(nrs: Int): BigInteger{

    var f: BigInteger = 0.toBigInteger()
    var v: BigInteger = 1.toBigInteger()
    var t: BigInteger = 0.toBigInteger()

    for(i in 1..nrs){
        f = v + t
        t = v
        v = f
    }
    return f
}

fun recursiveFibonacci(n: Int): Int{
    return when(n){
        0 -> 0
        1 -> 1
        else -> recursiveFibonacci(n-1) + recursiveFibonacci(n-2)
    }
}

var cache = mutableMapOf<Int, Int>()

fun cachingRecursiveFibonacci(n: Int): Int = when(n){
    0 -> 0
    1 -> 1
    else -> {
        if(cache.containsKey(n)){
            println("$n from cache")
            cache[n]
        }else{
            cache[n] = recursiveFibonacci(n-1) + recursiveFibonacci(n-2)
            println("$n to cache")
            cache[n]
        }
    }
}!!
