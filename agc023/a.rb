gets # n
ns = gets.split.map(&:to_i)

counts = Hash.new(0)
# cumulative sums
ns.inject([0]) { |a, n| a << a.last + n }.each do |n|
  counts[n] += 1
end

# sum of nC2
p counts.values.map { |n| n * (n - 1) / 2 }.reduce(:+)
