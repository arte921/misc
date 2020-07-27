import java.math.BigInteger

var f: BigInteger = 0.toBigInteger()
var v: BigInteger = 1.toBigInteger()
var t: BigInteger = 0.toBigInteger()

fun fibonacci(nrs: Int): BigInteger{
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
            println("$n fromcache")
            cache[n]
        }else{
            cache[n] = recursiveFibonacci(n-1) + recursiveFibonacci(n-2)
            println("$n tocache")
            cache[n]
        }
    }
}!!
