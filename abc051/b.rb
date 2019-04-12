k, s = gets.split.map(&:to_i)

ks = 0..k
ns = [*ks]
xy = ns.product(ns) # 3 -> 2
zs = xy.map { |x, y| s - x - y }
p zs.count { |z| ks.include?(z) }
