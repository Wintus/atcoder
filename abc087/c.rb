class Array
  def scan_left(init = 0)
    reduce([init]) { |a, n| a << yield(a.last, n) }
  end
end

n = gets.to_i
ns1 = gets.split.map(&:to_i)
ns2 = gets.split.map(&:to_i)

a1 = ns1.scan_left(&:+)
a2 = ns2.scan_left(&:+)

b2 = Array.new(n) { |i| a2.last - a2[i] }
p a1.drop(1).zip(b2).map { |(a, b)| a + b }.max
