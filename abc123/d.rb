x, y, z, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

# dp = Array.new(x) { Array.new(y) { Array.new(z, 0) } }

vs = as.product(bs, cs).map { |ns| ns.reduce(:+) }
vs.sort!.reverse!
p *vs.take(k)
