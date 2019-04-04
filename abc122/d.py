import functools
import re

MOD = 10 ** 9 + 7
ACGT = 'ACGT'
GOOD = 'TTT'
BAD = re.compile(r'AGC|GAC|ACG|A.GC|AG.C')


@functools.lru_cache(maxsize=None)
def dfs(n, i, last3):
    if i == n:
        return 1
    else:
        return sum(
            dfs(n, i + 1, last3[1:] + c)
            for c in ACGT
            if not re.search(BAD, last3 + c)) % MOD


N = int(input())
print(dfs(N, 0, GOOD))
