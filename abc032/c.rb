n, k = gets.split.map(&:to_i)
ns = Array.new(n) { gets.to_i }

if ns.include?(0)
  p n
  exit
end

# 尺取り法
len = 0
r = 0
prod = 1

n.times do |l|
  while r < n && prod * ns[r] <= k
    prod *= ns[r]
    r += 1
  end

  len = [r - l, len].max

  if l == r
    r += 1 # extend right
  else
    prod /= ns[l] # left is out
  end
end

p len
