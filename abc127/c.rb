n, m = gets.split.map(&:to_i)

l, r = 1, n
m.times do
  li, ri = gets.split.map(&:to_i)
  l = [l, li].max
  r = [r, ri].min
end

p((l..r).size)
