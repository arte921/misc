import time

go = time.time()

t = 0
e = 1
i = 0

while (i<100):
    f = e + t
    t = e
    e = f
    print(f)
    i += 1

print("time:", time.time() - go)
