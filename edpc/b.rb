INF = 1 << 60

n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

# minimize
# init
dp = Array.new(n, INF)
dp[0] = 0
# change min
n.times do |i|
  (i + 1).upto([i + k, n - 1].min) do |j|
    dp[j] = [dp[j], dp[i] + (hs[i] - hs[j]).abs].min
  end
end

p dp.last
