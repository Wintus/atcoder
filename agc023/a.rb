gets # n
ns = gets.split.map(&:to_i)

counts = Hash.new(0)
# cumulative sums
ns.inject([0]) { |a, n| a << a.last + n }.each do |n|
  counts[n] += 1
end

# sum of nC2
p counts.each_value.reduce(0) { |a, n| a + n * (n - 1) / 2 }