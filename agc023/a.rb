gets # n
ns = gets.split.map(&:to_i)

counter = Hash.new(0)
# cumulative sums
ns.inject([0]) { |a, n| a << a.last + n }.each do |n|
  counter[n] += 1
end

# sum of nC2
p counter.each_value.reduce(0) { |a, n| a + n * (n - 1) / 2 }
