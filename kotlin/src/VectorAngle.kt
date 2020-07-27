import kotlin.math.PI
import kotlin.math.acos
import kotlin.math.pow
import kotlin.math.sqrt

fun VectorAngle(xa: Double, ya: Double, xb: Double, yb: Double): Double = acos((xa*xb+ya*yb)/(sqrt(xa.pow(2)+ya.pow(2))*sqrt(xb.pow(2)+yb.pow(2))))/ PI * 180
