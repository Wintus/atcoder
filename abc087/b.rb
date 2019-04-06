COINS = [500, 100, 50]

a, b, c, x = readlines.map(&:to_i)

def comb_count(a, b, c, x)
  combs = a.product(b, c)
  values = combs.map { |counts| counts.zip(COINS).map { |n, v| n * v }.reduce(:+) }
  values.count(x)
end

p comb_count([*0..a], [*0..b], [*0..c], x)
