s = gets.chomp

if s.size == 1
  p 0
  exit
end

bs = s.chars

p bs.each_cons(2).map { |a, b| a == b }
    .each_with_index.select { |v, _i| v }
    .map(&:last)
    .map(&:succ)
    .each_slice(2).map { |a, b| b ? (a...b).size : 1 }
    .reduce(0, :+)
