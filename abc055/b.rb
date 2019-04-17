MOD = 10**9 + 7

n = gets.to_i

p((1..n).reduce { |a, m| a * m % MOD })
