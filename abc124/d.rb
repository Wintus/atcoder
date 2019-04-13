n, k = gets.split.map(&:to_i)
s = gets.chomp

# run length
chunks = s.chars.chunk { |c| c }.map { |c, a| [c, a.size] }
p chunks

# 尺取り法
l, r = 0, 0
used = 0
sum = 0
ans = 0
while r < n
  if x
    :foo
  elsif l == r
    r += 1
    l += 1
  else
    sum -= chunks[l][1]
    l += 1
  end
end
