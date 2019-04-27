FLIP2 = [[0, -1], [-1, 0]]
FLIP3 = [-1, 1, -1]

n = gets.to_i
ns = gets.split.map(&:to_i)

n.times do
p  signs = ns.map { |m| m <=> 0 }
  _t, i = signs.each_cons(2).with_index.find { |pair, _i| FLIP2.include?(pair) }
  break if i.nil?

  ns[i] *= -1
  ns[i + 1] *= -1
end

n.times do
 p signs = ns.map { |m| m <=> 0 }
  _t, i = signs.each_cons(3).with_index.find { |tri, _i| tri == FLIP3 }
  break if i.nil?

  ns[i] *= -1
  ns[i + 2] *= -1
end

p ns.reduce(:+)
