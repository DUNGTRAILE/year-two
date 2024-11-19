import random
def dist(A, B):
    if len(A) != len(B):
        print("Hai danh sách phải có cùng kích thước!")
        return 0
    maxd = 0
    for i in range(len(A)):
        diff = abs(A[i] - B[i])
        maxd = max(maxd, diff)

    return maxd


A = [random.uniform(0, 100) for _ in range(10)]
B = [random.uniform(0, 100) for _ in range(10)]

kq = dist(A, B)
print(kq)