def round10(n)
  (n + 9) / 10 * 10
end

# 1..123
ts = Array.new(5) { gets.to_i } # a..e

t_max, i = ts.each_with_index.max_by { |t, _i| round10(t) - t } # min loss
ts.map! { |t| round10(t) }
ts[i] = t_max

p ts.reduce(:+)
