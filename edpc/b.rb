INF = 1 << 60

n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = [0]
# refer ahead
n.times do |i|
  # i + 1..k & 1...n
  (i + 1).upto([i + k, n - 1].min) do |j|
    # change min
    cost = dp[i] + (hs[i] - hs[j]).abs
    dp[j] = cost if (dp[j] || INF) > cost
  end
end

p dp.last
