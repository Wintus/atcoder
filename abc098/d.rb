n = gets.to_i
ns = gets.split.map(&:to_i)

# 尺取り法
c = r = sum = 0

n.times do |l|
  while r < n && (sum ^ ns[r] == sum + ns[r])
    sum += ns[r]
    r += 1
  end

  c += r - l

  if l == r
    r += 1
  else
    sum -= ns[l] # or ^=
  end
end

p c
