n, k = gets.split.map(&:to_i)
ns = gets.split.map(&:to_i)

# sum(a + 1, b) < sum(a, b) < sum(a, b + 1)
# k <= sum(l, R) < sum(l, r: > R)

count = 0

# 尺取り法
sum = 0
r = 0
n.times do |l|
  while sum < k
    break if r == n
    sum += ns[r]
    r += 1
  end
  break if sum < k
  count += n - r + 1
  sum -= ns[l]
end

p count
