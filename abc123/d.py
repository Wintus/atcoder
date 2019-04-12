# priority queue like solution
# O(K log K)

_, _, _, K = map(int, input().split())
a = list(map(int, input().split()))
b = list(map(int, input().split()))
c = list(map(int, input().split()))

a.sort(reverse=True)
b.sort(reverse=True)
c.sort(reverse=True)


def score(ia, ib, ic):
    return sum((a[ia], b[ib], c[ic]))


ans = []

comb = set()
comb.add((score(0, 0, 0), 0, 0, 0))

for _ in range(K):
    t = max(comb)
    s, i, j, k = t
    ans.append(s)
    comb.remove(t)

    opts = [
        (i + 1, j, k),
        (i, j + 1, k),
        (i, j, k + 1),
    ]
    for (i, j, k) in opts:
        try:
            comb.add((score(i, j, k), i, j, k))
        except IndexError:
            pass

for a in ans:
    print(a)
