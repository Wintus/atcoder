module Enumerable
  def scan(init = 0)
    inject([init]) { |a, n| a << yield(a.last, n) }
  end
end

n = gets.to_i
ns1 = gets.split.map(&:to_i)
ns2 = gets.split.map(&:to_i)

a1 = ns1.scan(&:+)
a2 = ns2.scan(&:+)

p Array.new(n) { |i| a1[i + 1] + a2.last - a2[i] }.max
