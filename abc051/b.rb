k, s = gets.split.map(&:to_i)

ks = 0..k
ns = ks.to_a

c = 0
# 3 -> 2
ns.product(ns) { |x, y| c += 1 if ks.include?(s - x - y) } # z
p c
