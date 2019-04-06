a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
k = gets.to_i

ok = [a, b, c, d, e]
       .combination(2)
       .map { |p, q| q - p }
       .all? { |d| d <= k }
puts ok ? 'Yay!' : ':('
