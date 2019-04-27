n = gets.to_i
ns = gets.split.map(&:to_i)

# 尺取り法
# [0, 1) : OK
c = 0
r = 1

n.times do |l|
  # next is valid?
  r += 1 while r < n && (l >= r || ns[r - 1] < ns[r])
  c += r - l
  r += 1 if l == r
end

p c
