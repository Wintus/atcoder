n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

dp = [0]
# refer back
1.upto(n - 1) do |i|
  last = i - 1
  dp[i] = dp[last] + (hs[i] - hs[last]).abs # 仮

  [i - k, 0].max.upto(last - 1) do |j|
    # change min
    cost = dp[j] + (hs[i] - hs[j]).abs
    dp[i] = cost if dp[i] > cost
  end
end

p dp.last
