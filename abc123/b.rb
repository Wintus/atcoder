def round10(n)
  (n + 9) / 10 * 10
end

def time(ms)
  ms.reduce do |last, duration|
    round10(last) + duration
  end
end

# 1..123
ms = Array.new(5) { gets.to_i } # a..e
ps = ms.permutation

# 41..643
t, = ps.map { |p| [time(p), p] }.min_by { |t, _| t }
p t
