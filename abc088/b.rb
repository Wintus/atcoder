_ = gets
ns = gets.split.map(&:to_i)

ns.sort!.reverse!

sig = [1, -1].cycle

p ns.zip(sig).map { |n, s| n * s }.reduce(:+)
