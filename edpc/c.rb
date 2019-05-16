P32 = 3.times.to_a.permutation(2) # no dup

n = gets.to_i
# [a, b, c][]
ts = Array.new(n) { gets.split.map(&:to_i) }

dp = [[0] * 3]
n.times do |i|
  dp << [0] * 3
  P32.each do |(j, k)|
    # change max
    score = dp[i][j] + ts[i][k]
    dp[i + 1][k] = score if dp[i + 1][k] < score
  end
end

p dp.last.max
