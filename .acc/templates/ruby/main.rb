_n = gets.to_i
n, m = gets.split.map(&:to_i)
ns = gets.split.map(&:to_i)

cum_sum = ns.inject([0]) { |a, i| a << (a.last || 0) + i }

p n, m, ns, cum_sum
