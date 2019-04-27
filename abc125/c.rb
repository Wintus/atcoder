n = gets.to_i
ns = gets.split.map(&:to_i)

if ns.count(1) > 1
  p 1
else
  ds = Array.new(n) do |i|
    ns.reject.with_index { |_, j| i == j }.reduce(&:gcd)
  end
  p ds.max
end
