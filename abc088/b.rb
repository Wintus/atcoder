_ = gets
ns = gets.split.map(&:to_i)

ns.sort!.reverse!

p ns.each_slice(2).map { |a, b| a - b.to_i }.reduce(:+)
