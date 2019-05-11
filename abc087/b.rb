COINS = [500, 100, 50]

a, b, c, x = readlines.map(&:to_i)

count = 0
[*0..a].product([*0..b], [*0..c]) do |counts|
  count += 1 if counts.zip(COINS).map { |(n, v)| n * v }.reduce(:+) == x
end
p count
