k, s = gets.split.map(&:to_i)

ns = [*0..k]
p ns.product(ns, ns).count { |x, y, z| x + y + z == s }
