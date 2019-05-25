# knapsack

n, w = gets.split.map(&:to_i)

p dp = [0] * (w + 1)
n.times do
  iw, iv = gets.split.map(&:to_i)
  (w - iw).downto(0) do |w_sum|
    v0, v1 = dp[w_sum + iw], dp[w_sum] + iv
    dp[w_sum + iw] = v1 if v1 > v0
    p w_sum => dp
  end
  p dp
end

p dp[-1]
