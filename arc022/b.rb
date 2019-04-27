require 'set'

n = gets.to_i
ns = gets.split.map(&:to_i)

# 尺取り法
# [0, 1) : OK
len = 0
r = 0
set = Set.new

n.times do |l|
  # is next valid?
  while r < n && !set.include?(ns[r])
    set << ns[r]
    r += 1
  end

  len = [r - l, len].max

  if l == r
    r += 1
  else
    set.delete(ns[l])
  end
end

p len
