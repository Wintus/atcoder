s = gets.chomp
n = s.size

if n == 1
  p 0
  exit
end

d, m = n.divmod(2)
s0 = '01' * d + '0' * m
s1 = '10' * d + '1' * m

def diff_count(a, b)
  a.chars.zip(b.chars).count { |(b0, b1)| b0 != b1 }
end

p [diff_count(s, s0), diff_count(s, s1)].min
