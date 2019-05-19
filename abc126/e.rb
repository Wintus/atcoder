n, m = gets.split.map(&:to_i)

hints = Hash.new { |h, k| h[k] = {} }
m.times do
  x, y, z = gets.split.map(&:to_i)
  hints[x][y] = z # 1-origin
end

# <true=known,nil=unknown>
data = {}

count = 0
1.upto(n) do |i|
  unless data[i]
    # use magic to get data
    count += 1
    data[i] = true
  end

  hints[i].each_key do |j|
    data[j] = true
  end
end

p count
