ps = Array.new(5) { gets.to_i } # a..e
k = gets.to_i

ok = ps.combination(2)
       .map { |p, q| q - p }
       .all? { |d| d <= k }
puts ok ? 'Yay!' : ':('
