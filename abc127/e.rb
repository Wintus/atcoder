# MOD=10**9+7
MOD = 1_000_000_007

n, m, k = gets.split.map(&:to_i)

costs = [*n.times].product([*m.times]).combination(k).flat_map do |ks|
  # p ks

  ks.combination(2).map do |(a, b)|
    x0, y0 = a
    x1, y1 = b
    (x0 - x1).abs + (y0 - y1).abs % MOD
  end
end
# p costs

sum = costs.reduce(0) { |a, x| a + x % MOD }
p sum
