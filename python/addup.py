#An algorithm for adding upp numbers in Python

import time

def add(a,b):
    start = time.time()
    time.sleep(a)
    time.sleep(b)
    print(time.time()-start)
add(1,2)
