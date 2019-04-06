def round10(n)
  (n / 10.0).ceil * 10
end

def time(ms)
  ms.reduce do |last, duration|
    round10(last) + duration
  end
end

# 1..123
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

ms = [a, b, c, d, e]
ps = ms.permutation

# 41..643
t, = ps.map { |p| [time(p), p] }.min_by { |t, _| t }
p t
