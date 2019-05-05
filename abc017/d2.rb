MOD = 1_000_000_007

n, m = gets.split.map(&:to_i)
fs = Array.new(n) { gets.to_i }

s = Array.new(m + 1) # 1-origin
a = Array.new(n + 1, 0)

# 1st day
a[-1] = 1
c = 1

left = 0
fs.each_with_index do |f, i|
  while s[f]
    s[fs[left]] = false
    c -= a[left - 1]
    c %= MOD
    left += 1
  end
  s[f] = true
  a[i] = c
  c *= 2
  c %= MOD
end

p a[-2] % MOD
