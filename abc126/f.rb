m, k = gets.split.map(&:to_i)

ns = []
(2 ** m).times do |i|
  ns << i << i
end

p ns
