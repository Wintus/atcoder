# frozen_string_literal: true

BAD = /AGC|GAC|ACG|A.GC|AG.C/.freeze
MOD = 10**9 + 7
CHARS = 'ACGT'.each_char

# memoized DFS
def dfs(i, last3, n, memo)
  return 1 if i == n

  # p [i, last3, memo]
  m = memo[i][last3]
  return m if m

  a =
    CHARS
    .reject { |c| last3 + c =~ BAD }
    .sum { |c| dfs(i + 1, last3[1..-1] + c, n, memo) }

  memo[i][last3] = a % MOD
end

n = gets.to_i
p dfs(0, 'TTT', n, Array.new(n) { {} })
