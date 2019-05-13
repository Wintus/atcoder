INF = 1 << 60

n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = [0]
# refer ahead
n.times do |i|
  (i + 1).upto([i + k, n - 1].min) do |j|
    # inline change min
    cost = dp[i] + (hs[i] - hs[j]).abs
    dp[j] = cost if dp.fetch(j, INF) > cost
  end
end

p dp.last
