int fib (int f, int v, int i) {
	if (i == 0) return f;
	return fib (f + v, f, i - 1);
}

int main () {
	fib (1, 0, 10);
}

