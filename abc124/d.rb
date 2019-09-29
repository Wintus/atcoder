# frozen_string_literal: true

_, k = gets.split.map(&:to_i)
s = gets.chomp

# run length
ns = s.chars.chunk(&:itself).map { |(b, a)| [b.to_i, a.size] }
# /(10)*1/
ns.unshift [1, 0] unless ns.first.first == 1
ns << [1, 0] unless ns.last.first == 1
# <len>
ns.map!(&:last)

# 累積和
sums = ns.inject([0]) { |a, n| a << a.last + n }

w = k * 2 + 1
# 1 only = every 2
ls = (0...sums.size).step(2).map { |i| sums.fetch(i + w, sums.last) - sums[i] }
p ls.max
