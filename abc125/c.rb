module Enumerable
  def scan_left(init = 0)
    inject([init]) { |a, n| a << yield(a.last, n) }
  end
end

n = gets.to_i
ns = gets.split.map(&:to_i)

ls = ns.scan_left(&:gcd)
rs = ns.reverse.scan_left(&:gcd).reverse
# p ls, rs

as = Array.new(n) do |i|
  l = ls[i]
  r = rs[i + 1]
  l.gcd r
end
p as.max
