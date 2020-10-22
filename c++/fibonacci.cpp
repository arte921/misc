#include <iostream>

int fibonacci (int f, int v, int i) {
    if (i == 0) return f;
    std::cout << f;
    std::cout << "\n";
    return fibonacci(f + v, f, i - 1);
}

int main () {
    fibonacci(0, 1, 10);
    return 0;
}
