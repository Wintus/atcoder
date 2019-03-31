def shift_l(str)
  str[1..-1] + str[0]
end

def cycle(str)
  str.size.pred.times.reduce([str]) { |a| a << shift_l(a.last) }
end

s = gets.strip
t = gets.strip
b = cycle(s).any? { |str| str == t }
puts b ? 'Yes' : 'No'
