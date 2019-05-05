N, K = map(int, input().split())
F = [int(input()) for i in range(N)]
s = set()
A = [0] * (N + 1)
A[-1] = 1
cu = 1
mod = 10 ** 9 + 7

left = 0
for i, f in enumerate(F):
    while f in s:
        s.remove(F[left])
        cu -= A[left - 1]
        cu %= mod
        left += 1
    s.add(f)
    A[i] = cu
    cu += cu
    cu %= mod
print(A[-2] % mod)
