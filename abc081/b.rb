_ = gets # .to_i
ns = gets.split.map(&:to_i)

# min LSB
p ns.map { |n| n & -n }.min.bit_length - 1
