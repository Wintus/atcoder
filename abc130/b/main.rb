_, x = gets.split.map(&:to_i)
ls = gets.split.map(&:to_i)

cum_sum = ls.inject([0]) { |a, n| a << a.last.to_i + n }
p count = cum_sum.take_while { |n| n <= x }.size
