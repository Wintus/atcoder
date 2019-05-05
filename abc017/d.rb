MOD = 1_000_000_007

n, m = gets.split.map(&:to_i)
fs = Array.new(n) { gets.to_i - 1 } # 0-origin

taken = Array.new(m)
lefts = Array.new(n + 1, 0)

# 尺取り法
left = 0
n.times do |right|
  while left < right && taken[fs[right]]
    taken[fs[left]] = false
    left += 1
  end
  taken[fs[right]] = true
  lefts[right + 1] = left
end

# dp[0] = 1
# dp[i] = dp[j...i].sum
# [j,i) is unique
dp = Array.new(n + 1)
dp[0] = 1
# cum sum
# cs[i+1] = dp[0..i].sum
cs = Array.new(n + 2)
cs[0] = 0
cs[1] = 1

(1..n).each do |i|
  dp[i] = (cs[i] - cs[lefts[i]]) % MOD
  cs[i + 1] = (cs[i] + dp[i]) % MOD
end

# p dp.zip(lefts, 0.step).map { |(c, l, r)| [c, l...r] }
p dp[-1]
