def fibloop (v, f, i):
    if i == 0:
        return f
    print(f)
    fibloop (f, f + v, i - 1)

fibloop(0, 1, 10)